<?php

namespace App\Http\Controllers;

use Request;
use DB;

class FilterViewController extends Controller
{
    public function categoryView($id)
    {
        $catname = DB::table('categories')->where('id', $id)->get();

        $category_all = DB::table('products')->where('category_id', $id)->orderBy('product_name')->paginate(50);

        if ((new \Illuminate\Http\Request)->get('sort') == 'price_asc') {
            $category_all = DB::table('products')->where('category_id', $id)->orderBy('selling_price', 'asc')->orderBy('discount_price', 'asc')->paginate(50);
        } elseif ((new \Illuminate\Http\Request)->get('sort') == 'price_desc') {
            $category_all = DB::table('products')->where('category_id', $id)->orderBy('selling_price', 'desc')->orderBy('discount_price', 'desc')->paginate(50);

        } elseif (Request::get('sort') == 'price_created') {
            $category_all = DB::table('products')->where('category_id', $id)->orderBy('created_at', 'desc')->paginate(50);
        } else {
            $category_all = DB::table('products')->where('category_id', $id)->orderBy('product_name')->paginate(50);
        }
        return view('pages.all_category', compact('category_all', 'catname', 'id'));

    }

    public function subcategoryView($id)
    {

        $categories = DB::table('categories')->get();

        $brands = DB::table('products')->where('subcategory_id', $id)->select('brand_id')->groupBy('brand_id')->get();

        $subcatname = DB::table('subcategories')->where('id', $id)->get();

        if (Request::get('sort') == 'price_asc') {
            $products = DB::table('products')->where('subcategory_id', $id)->orderBy('selling_price', 'asc')->orderBy('discount_price', 'asc')->paginate(50);
        } elseif (Request::get('sort') == 'price_desc') {
            $products = DB::table('products')->where('subcategory_id', $id)->orderBy('selling_price', 'desc')->orderBy('discount_price', 'desc')->paginate(50);

        } elseif (Request::get('sort') == 'price_created') {
            $products = DB::table('products')->where('subcategory_id', $id)->orderBy('created_at', 'desc')->paginate(50);
        } else {
            $products = DB::table('products')->where('subcategory_id', $id)->orderBy('product_name')->paginate(50);
        }

        return view('pages.all_products', compact('products', 'categories', 'id', 'brands', 'subcatname'));


    }
}
