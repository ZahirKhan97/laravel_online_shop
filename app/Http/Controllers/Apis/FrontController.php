<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Apis\BaseController as BaseController;
use App\Models\Product;
use Illuminate\Http\Request;

class FrontController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = getCategories();
        $featuredProducts = Product::orderBy('id', 'DESC')->where(['is_featured' => 'Yes', 'status' => 1])->take(8)->get();
        $latestProducts = Product::orderBy('id', 'DESC')->where('status', 1)->take(8)->get();
        $data['categories'] = $categories;
        $data['featuredProducts'] = $featuredProducts;
        $data['latestProducts'] = $latestProducts;
        $data['products_images_path'] = asset('uploads/product/small') . "/";
        $data['categories_images_path'] = asset('uploads/category/thumb') . "/";
        return $this->sendResponse($data, 'Home Products');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
