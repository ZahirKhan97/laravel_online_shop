<?php

use App\Mail\OrderEmail;
use App\Models\Category;
use App\Models\Country;
use App\Models\Order;
use App\Models\ProductImage;
use Illuminate\Support\Facades\Mail;

function getCategories()
{
  return Category::orderBy('name', 'ASC')->where('showHome', 'Yes')->where('status', 1)
    ->orderBy('id', 'DESC')
    ->with('sub_category')
    ->get();
}

function getProductImage($productId)
{
  return ProductImage::where('product_id', $productId)->first();
}

function orderEmail($orderId)
{
  $order = Order::where('id', $orderId)->with('items')->first();
  $mailData = [
    'subject' => "Thank You For Shopping Here",
    'order' => $order
  ];
  // dd($order);
  Mail::to($order->email)->send(new OrderEmail($mailData));
}
function getCountryInfo($id)
{
  return Country::where('id', $id)->first();
}
