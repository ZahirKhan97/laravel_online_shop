<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\TempImage;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class TempImagesController extends Controller
{
    public function create(Request $request)
    {
        if ($request->image) {
            $image = $request->image;
            $ext = $image->getClientOriginalExtension();
            $newName = time() . '.' . $ext;
            $tempImage = new TempImage();
            $tempImage->name = $newName;
            $tempImage->save();
            $image->move(public_path() . '/temp', $newName);

            // Generate Thumbnail
            $sourcePath = public_path() . '/temp/' . $newName;
            $destPath = public_path() . '/temp/thumb/' . $newName;
            $manager = new ImageManager(new Driver());
            $img = $manager->read($sourcePath);
            $img->cover(300, 275);
            $img->save($destPath);
            return response()->json([
                'status' => true,
                'image_id' => $tempImage->id,
                'imagePath' => asset('/temp/thumb/' . $newName),
                'message' => "Image uploaded Successfully"
            ]);
        }
    }
}
