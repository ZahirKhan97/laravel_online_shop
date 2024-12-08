<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Apis\BaseController as BaseController;
use App\Models\Product;
use Illuminate\Http\Request;

class ShopController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }


    public function product($slug)
    {
        $product = Product::where('slug', $slug)->withCount('product_ratings')->withSum('product_ratings', 'rating')->with(['product_images', 'product_ratings'])->first();

        if ($product == null) {
            abort(404);
        }
        $relatedProducts = [];
        // Fetch Related Products here
        if ($product->related_products != "") {
            $productsArray = explode(',', $product->related_products);
            $relatedProducts = Product::whereIn('id', $productsArray)->where('status', 1)->get();
        }
        $data['product'] = $product;
        $data['relatedProducts'] = $relatedProducts;

        // Rating calculation
        $avgRating = '0.00';
        $avgRatingPer = 0;
        if ($product->product_ratings_count > 0) {
            $avgRating = number_format(($product->product_ratings_sum_rating / $product->product_ratings_count), 2);
            $avgRatingPer = ($avgRating * 100) / 5;
        }
        $data['avgRating'] = $avgRating;
        $data['avgRatingPer'] = $avgRatingPer;
        return $this->sendResponse($data, 'Single Product');
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
