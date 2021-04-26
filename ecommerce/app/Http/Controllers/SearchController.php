<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function productSearch(Request $request)
    {
        $item = $request->search;
        // echo "$item";

        $products = DB::table('products')
            ->where('product_name', 'LIKE', "%$item%")
            ->paginate(20);

        return view('pages.search', compact('products'));


    }
}
