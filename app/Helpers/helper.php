<?php

use App\Mail\OrderEmail;
use App\Models\Category;
use App\Models\Country;
use App\Models\Order;
use App\Models\ProductImage;
use Illuminate\Support\Facades\Auth;
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

function orderEmail($orderId, $userType = "customer")
{
  $order = Order::where('id', $orderId)->with('items')->first();
  if ($userType == 'customer') {
    $subject = "Thank You For Shopping Here";
    $email = $order->email;
  } else {
    $subject = "You have Received an Order";
    $email = Auth::user()->email;
  }
  $mailData = [
    'subject' => $subject,
    'order' => $order,
    'userType' => $userType
  ];
  // dd($order);

  Mail::to($email)->send(new OrderEmail($mailData));
}
function getCountryInfo($id)
{
  return Country::where('id', $id)->first();
}
