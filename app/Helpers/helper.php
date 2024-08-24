<?php

use App\Models\Category;
use App\Models\ProductImage;

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
