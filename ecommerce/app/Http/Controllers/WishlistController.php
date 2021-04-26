<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Response;


class WishlistController extends Controller
{
    public function addWishlist($id)
    {

        $userid = Auth::id();
        $check = DB::table('wishlists')->where('user_id', $userid)->where('product_id', $id)->first();

        $data = array(
            'user_id' => $userid,
            'product_id' => $id,

        );

        if (Auth::Check()) {

            if ($check) {
                $notification = array(
                    'messege' => 'Product Already in Wishlist',
                    'alert-type' => 'warning'
                );
                return Redirect()->back()->with($notification);

            } else {
                DB::table('wishlists')->insert($data);
                $notification = array(
                    'messege' => 'Product Added to Wishlist',
                    'alert-type' => 'success'
                );
                return Redirect()->back()->with($notification);

            }
        } else {
            $notification = array(
                'messege' => 'Login First',
                'alert-type' => 'error'
            );
            return Redirect()->back()->with($notification);
        }

    }


    public function productWishlist()
    {
        $userid = Auth::id();
        $product = DB::table('wishlists')
            ->join('products', 'wishlists.product_id', 'products.id')
            ->select('products.*', 'wishlists.user_id')
            ->where('wishlists.user_id', $userid)
            ->get();
        // return response()->json($product);
        return view('pages.wishlist', compact('product'));
    }
}
