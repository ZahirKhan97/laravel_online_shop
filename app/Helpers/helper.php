<?php

use App\Models\Category;

function getCategories()
{
  return Category::orderBy('name', 'ASC')->where('showHome', 'Yes')->where('status', 1)
    ->orderBy('id', 'DESC')
    ->with('sub_category')
    ->get();
}
