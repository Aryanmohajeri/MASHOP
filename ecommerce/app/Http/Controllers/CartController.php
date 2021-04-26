<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Cart;
use Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use phpDocumentor\Reflection\Types\True_;
use Session;

class CartController extends Controller
{

    public function addCart($id){
        $product = DB::table('products')->where('id',$id)->first();

        $data = array();
    if ($product->discount_price == NULL){
        $data['id'] = $product->id;
        $data['name'] = $product->product_name;
        $data['qty'] = 1;
        $data['price'] = $product->selling_price;
        $data['weight'] = 1;
        $data['options']['image'] = $product->image_one;
        $data['options']['color'] = '';
        $data['options']['size'] = '';
        Cart::add($data);
        return \Response::json(['success' => 'Added on your Cart']);

    }else {
        $data['id'] = $product->id;
        $data['name'] = $product->product_name;
        $data['qty'] = 1;
        $data['price'] = $product->discount_price;
        $data['weight'] = 1;
        $data['options']['image'] = $product->image_one;
        $data['options']['color'] = '';
        $data['options']['size'] = '';
        Cart::add($data);
        return \Response::json(['success' => 'Added on your Cart']);

    }
    }

    public function check(){
        $content = Cart::content();
        return response()->json($content);
    }


    public function ShowCart(){
        $cart = Cart::content();
        return view('pages.cart',compact('cart'));
    }

    public function removeCart($rowId){
        Cart::remove($rowId);
        $notification=array(
            'messege'=>'Product Removed',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);

    }

    public function updateCart(Request $request){
        $rowId = $request->productid;
        $qty = $request->qty;
        Cart::update($rowId,$qty);
        $notification=array(
            'messege'=>'Product Quantity Updated',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function viewProduct($id){
        $product = DB::table('products')
            ->join('categories','products.category_id','categories.id')
            ->join('subcategories','products.subcategory_id','subcategories.id')
            ->join('brands','products.brand_id','brands.id')
            ->select('products.*','categories.category_name','subcategories.subcategory_name','brands.brand_name')
            ->where('products.id',$id)
            ->first();
        $color = $product->product_color;
        $product_color = explode(',', $color);

        $size = $product->product_size;
        $product_size = explode(',', $size);

        return response::json(array(
            'product' => $product,
            'color' => $product_color,
            'size' => $product_size,
        ));
    }

//    this is for every other product other than raffles
    public function insertCart(Request $request){
        $carts = Cart::content();
        $hasRaffle = false;
        $id = $request->product_id;
        $product = DB::table('products')->where('id',$id)->first();

        foreach( $carts as $item){
            if($item->options->raffle == 1){
                $hasRaffle = true;
            }
        }

        if($hasRaffle == true){
            $notification = array(
                'messege' => 'There is a raffle in your cart, process your raffle before placing an order.',
                'alert-type' => 'warning'
            );
            return Redirect()->back()->with($notification);
        }elseif($product->raffle == 1 && sizeof($carts) >0  ){
            $notification = array(
                'messege' => 'There are products in your cart, process your order before entering a raffle.',
                'alert-type' => 'warning'
            );
            return Redirect()->back()->with($notification);
        }
        else {
            $color = $request->color;
            $size = $request->size;
            $qty = $request->qty;

            $data = array();

            if ($product->discount_price == NULL) {
                $data['id'] = $product->id;
                $data['name'] = $product->product_name;
                $data['qty'] = $request->qty;
                $data['price'] = $product->selling_price;
                $data['weight'] = 1;
                $data['options']['image'] = $product->image_one;
                $data['options']['raffle'] = $product->raffle;
                $data['options']['color'] = $request->color;
                $data['options']['size'] = $request->size;
                Cart::add($data);
                $notification=array(
                    'messege'=>'Product Added Successfully',
                    'alert-type'=>'success'
                );
                return Redirect()->back()->with($notification);
            }else{

                $data['id'] = $product->id;
                $data['name'] = $product->product_name;
                $data['qty'] = $request->qty;
                $data['price'] = $product->discount_price;
                $data['weight'] = 1;
                $data['options']['image'] = $product->image_one;
                $data['options']['raffle'] = $product->raffle;
                $data['options']['color'] = $request->color;
                $data['options']['size'] = $request->size;
                Cart::add($data);
                $notification=array(
                    'messege'=>'Product Added Successfully',
                    'alert-type'=>'success'
                );
                return Redirect()->back()->with($notification);

            }}

    }



    public function productCheckout(){
        if (Auth::check()){
            $cart = Cart::content();
            return view('pages.checkout',compact('cart'));
        }else{
            $notification=array(
                'messege'=>'Please Login First',
                'alert-type'=>'error'
            );
            return Redirect()->route('login')->with($notification);
        }
    }



    public function Coupon(Request $request){
        $coupon = $request->coupon;

        $check = DB::table('coupons')->where('coupon',$coupon)->first();
        if ($check) {
            Session::put('coupon',[
                'name' => $check->coupon,
                'discount' => $check->discount,
                'balance' => Cart::Subtotal()-$check->discount
            ]);
            $notification=array(
                'messege'=>'Successfully Coupon Applied',
                'alert-type'=>'success'
            );
            return Redirect()->back()->with($notification);


        }else{
            $notification=array(
                'messege'=>'Invalid Coupon',
                'alert-type'=>'success'
            );
            return Redirect()->back()->with($notification);
        }

    }

    public function couponRemove(){
        Session::forget('coupon');
        $notification=array(
            'messege'=>'Promo Code removed Successfully',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);

    }

    public function paymentPage(){

        $cart = Cart::Content();
        return view('pages.payment',compact('cart'));

    }

}
