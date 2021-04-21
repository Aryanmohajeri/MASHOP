<?php

        namespace App\Http\Controllers;

        use App\Model\Admin\Subcategory;
        use Request;
        use Illuminate\Support\Facades\DB;
        use Cart;

        class ProductController extends Controller
        {
            public function productView($id,$product_name){
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

                return view('pages.product_details',compact('product','product_color','product_size'));
            }

            public function addCart(Request $request, $id){
                $carts = Cart::content();
                $hasRaffle = false;
                $product = DB::table('products')->where('id', $id)->first();

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
                }
                elseif($product->raffle == 1 && sizeof($carts) >0  ){
                    $notification = array(
                        'messege' => 'There are products in your cart, process your order before entering a raffle.',
                        'alert-type' => 'warning'
                    );
                    return Redirect()->back()->with($notification);
                }else {


                    $data = array();

                    if ($product->discount_price == NULL) {
                        $data['id'] = $product->id;
                        $data['name'] = $product->product_name;
                        $data['qty'] = $request->qty;
                        $data['price'] = $product->selling_price;
                        $data['weight'] = 1;
                        $data['options']['raffle'] = $product->raffle;
                        $data['options']['image'] = $product->image_one;
                        $data['options']['color'] = $request->color;
                        $data['options']['size'] = $request->size;
                        Cart::add($data);
                        $notification = array(
                            'messege' => 'Product Successfully Added',
                            'alert-type' => 'success'
                        );
                        return Redirect()->back()->with($notification);
                    } else {

                        $data['id'] = $product->category_id;
                        $data['name'] = $product->product_name;
                        $data['qty'] = $request->qty;
                        $data['price'] = $product->discount_price;
                        $data['weight'] = 1;
                        $data['options']['raffle'] = $product->raffle;
                        $data['options']['image'] = $product->image_one;
                        $data['options']['color'] = $request->color;
                        $data['options']['size'] = $request->size;
                        Cart::add($data);
                        $notification = array(
                            'messege' => 'Product Successfully Added',
                            'alert-type' => 'success'
                        );
                        return Redirect()->back()->with($notification);
                    }
                }

            }
        //    public function productsView($id){
        //
        //        $products = DB::table('products')->where('subcategory_id',$id)->paginate(10);
        //
        //        $categories = DB::table('categories')->get();
        //
        //        $brands = DB::table('products')->where('subcategory_id',$id)->select('brand_id')->groupBy('brand_id')->get();
        //
        //        return view('pages.all_products',compact('products','categories','brands'));
        //
        //
        //    }


            public function categoryView($id){
                $catname = DB::table('categories')->where('id',$id)->get();

                $category_all =  DB::table('products')->where('category_id',$id)->orderBy('product_name')->paginate(50);

                if(Request::get('sort') == 'price_asc'){
                    $category_all = DB::table('products')->where('category_id',$id)->orderBy('selling_price', 'asc')->orderBy('discount_price','asc')->paginate(50);
                }elseif (Request::get('sort')== 'price_desc'){
                    $category_all = DB::table('products')->where('category_id',$id)->orderBy('selling_price','desc')->orderBy('discount_price','desc')->paginate(50);

                }elseif (Request::get('sort')== 'price_created'){
                    $category_all = DB::table('products')->where('category_id',$id)->orderBy('created_at','desc')->paginate(50);
                }
                else{
                    $category_all = DB::table('products')->where('category_id',$id)->orderBy('product_name')->paginate(50);
                }
                return view('pages.all_category',compact('category_all','catname','id'));

            }

            public function subcategoryView($id){

                $categories = DB::table('categories')->get();

                $brands = DB::table('products')->where('subcategory_id',$id)->select('brand_id')->groupBy('brand_id')->get();

                $subcatname = DB::table('subcategories')->where('id',$id)->get();

                if(Request::get('sort') == 'price_asc'){
                    $products = DB::table('products')->where('subcategory_id',$id)->orderBy('selling_price', 'asc')->orderBy('discount_price','asc')->paginate(50);
                }elseif (Request::get('sort')== 'price_desc'){
                    $products = DB::table('products')->where('subcategory_id',$id)->orderBy('selling_price','desc')->orderBy('discount_price','desc')->paginate(50);

                }elseif (Request::get('sort')== 'price_created'){
                    $products = DB::table('products')->where('subcategory_id',$id)->orderBy('created_at','desc')->paginate(50);
                }
                else{
                    $products = DB::table('products')->where('subcategory_id',$id)->orderBy('product_name')->paginate(50);
                }

                return view('pages.all_products',compact('products','categories','id','brands','subcatname'));


            }


        }

