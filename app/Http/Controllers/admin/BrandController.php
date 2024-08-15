<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BrandController extends Controller
{
    /**
     * Display listing of the Categories.
     */
    public function index(Request $request)
    {
        $brands = Brand::latest('id');
        if (!empty($request->get('keyword'))) {
            $brands = $brands->where('name', 'like', '%' . $request->keyword . '%');
        }
        $brands = $brands->paginate(10);

        return view('admin.brands.list', compact('brands'));
    }

    /**
     * Show the form for creating a new Category.
     */
    public function create()
    {
        return view('admin.brands.create');
    }

    /**
     * Store a newly created Category in DB.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands',
        ]);
        if ($validator->passes()) {
            $brand = new Brand();
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();
            session()->flash('success', 'Brand added successfully');
            return response()->json([
                'status' => true
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
    public function edit(string $id, Request $request)
    {
        $brand = Brand::find($id);
        if (empty($brand)) {
            session()->flash('error', 'Record not found!');
            return redirect()->route('brands.index');
        }

        return view('admin.brands.edit', compact('brand'));
    }

    /**
     * Update the specified Category in DB.
     */
    public function update(string $id, Request $request)
    {
        $brand = Brand::find($id);
        if (empty($brand)) {
            $message = "Record not found!";
            session()->flash('error', $message);
            return response()->json([
                'status' => false,
                'notFound' => true,
                'message' => $message
            ]);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:brands,slug,' . $brand->id . 'id',
        ]);
        if ($validator->passes()) {
            $brand->name = $request->name;
            $brand->slug = $request->slug;
            $brand->status = $request->status;
            $brand->save();
            session()->flash('success', 'Brand updated successfully');
            return response()->json([
                'status' => true
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
        $brand = Brand::find($id);
        if (empty($brand)) {
            $message = "Brand not found!";
            session()->flash('error', $message);
            return response()->json([
                'status' => true,
                'message' => $message
            ]);
        }
        $brand->delete();
        $message = "Brand deleted successfully";
        session()->flash('success', $message);
        return response()->json([
            'status' => true,
            'message' => $message
        ]);
    }
}
