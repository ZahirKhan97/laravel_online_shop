<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\TempImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class CategoryController extends Controller
{
    /**
     * Display listing of the Categories.
     */
    public function index(Request $request)
    {
        $categories = Category::latest();
        if (!empty($request->get('keyword'))) {
            $categories = Category::where('name', 'like', '%' . $request->get('keyword') . '%');
        }
        $categories = $categories->paginate(10);
        return view('admin.category.list', compact('categories'));
    }

    /**
     * Show the form for creating a new Category.
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created Category in DB.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories'
        ]);

        if ($validator->passes()) {
            $category = new Category();
            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            // Save Image Here
            if (!empty($request->image_id)) {
                $tempImage = TempImage::find($request->image_id);
                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);
                $newImageName = $category->id . '.' . $ext;
                $sPath = public_path('/temp/' . $tempImage->name);
                $dPath = public_path('/uploads/category/' . $newImageName);
                File::copy($sPath, $dPath);

                // Generate Image Thumbnail
                $dPath = public_path('/uploads/category/thumb/' . $newImageName);
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sPath);
                $img->resize(450, 600);
                $img->save($dPath);
                $category->image = $newImageName;
                $category->save();
            }

            $message = "Category added successfully";
            session()->flash('success', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    /**
     * Show the form for editing the specified Category.
     */
    public function edit(string $id)
    {
        $category = Category::find($id);
        if (empty($category)) {
            return redirect()->route('categories.index');
        }

        return view('admin.category.edit', compact('category'));
    }

    /**
     * Update the specified Category in DB.
     */
    public function update(string $id, Request $request)
    {
        $category = Category::find($id);
        if (empty($category)) {
            $message = "Category not found!";
            session()->flash('error', $message);
            return response()->json([
                'status' => false,
                'notFound' => true,
                'message' => $message
            ]);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:categories,slug,' . $category->id . 'id'
        ]);

        if ($validator->passes()) {

            $category->name = $request->name;
            $category->slug = $request->slug;
            $category->status = $request->status;
            $category->save();

            $oldImage = $category->image;

            // Save Image Here
            if (!empty($request->image_id)) {
                $tempImage = TempImage::find($request->image_id);
                $extArray = explode('.', $tempImage->name);
                $ext = last($extArray);
                $newImageName = $category->id . '-' . time() . '.' . $ext;
                $sPath = public_path('/temp/' . $tempImage->name);
                $dPath = public_path('/uploads/category/' . $newImageName);
                File::copy($sPath, $dPath);

                // Generate Image Thumbnail
                $dPath = public_path('/uploads/category/thumb/' . $newImageName);
                $manager = new ImageManager(new Driver());
                $img = $manager->read($sPath);
                $img->resize(450, 600);
                $img->save($dPath);
                $category->image = $newImageName;
                $category->save();

                // Delete old images here
                File::delete(public_path() . '/uploads/category/thumb/' . $oldImage);
                File::delete(public_path() . '/uploads/category/' . $oldImage);
            }

            $message = "Category updated successfully";
            session()->flash('success', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    /**
     * Remove the specified Category from DB.
     */
    public function destroy(string $id)
    {
        $category = Category::find($id);
        if (empty($category)) {
            $message = "Category not found!";
            session()->flash('error', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]);
        }
        File::delete(public_path() . '/uploads/category/thumb/' . $category->image);
        File::delete(public_path() . '/uploads/category/' . $category->image);
        $category->delete();
        $message = "Category deleted successfully";
        session()->flash('success', $message);
        return response()->json([
            'status' => true,
            'message' => $message
        ]);
    }
}
