<?php

namespace App\Http\Controllers;

use App\Models\Page;
use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FrontController extends Controller
{
    public function index()
    {
        $featuredProducts = Product::orderBy('id', 'DESC')->where(['is_featured' => 'Yes', 'status' => 1])->take(8)->get();
        $latestProducts = Product::orderBy('id', 'DESC')->where('status', 1)->take(8)->get();
        $data['featuredProducts'] = $featuredProducts;
        $data['latestProducts'] = $latestProducts;
        return view('front.home', $data);
    }

    public function addToWishlist(Request $request)
    {
        if (Auth::check() == false) {
            session(['url.intended' => url()->previous()]);
            return response()->json([
                'status' => false
            ]);
        }

        Wishlist::updateOrCreate(
            [
                'user_id' =>  Auth::user()->id,
                'product_id' => $request->id
            ],
            [
                'user_id' =>  Auth::user()->id,
                'product_id' => $request->id
            ]
        );
        // $wishList = new Wishlist();
        // $wishList->user_id = Auth::user()->id;
        // $wishList->product_id = $request->id;
        // $wishList->save();

        $product = Product::where('id', $request->id)->first();
        if ($product == null) {
            $message = "<div class='alert alert-danger'>Product not found</div>";
            return response()->json([
                'status' => true,
                'message' => $message
            ]);
        }

        $message = "<div class='alert alert-success'><strong>" . $product->title . "</strong> added in your wishlist</div>";
        return response()->json([
            'status' => true,
            'message' => $message
        ]);
    }

    public function page($slug)
    {
        $page = Page::where('slug', $slug)->first();
        if ($page == null) {
            abort(404);
        }
        return view('front.page', [
            'page' => $page
        ]);
    }
}
