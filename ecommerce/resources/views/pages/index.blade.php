@extends('layouts.app')
@section('content')



    @include('layouts.menubar')
    @include('layouts.slider')

    @php
        $featured = DB::table('products')->where('status',1)->orderBy('id','desc')->limit(8)->get();
        $trend = DB::table('products')->where('status',1)->where('trend',1)->orderBy('id','desc')->limit(8)->get();
        $best = DB::table('products')->where('status',1)->where('best_rated',1)->orderBy('id','desc')->limit(8)->get();
        $hot = DB::table('products')
                    ->join('brands','products.brand_id','brands.id')
                    ->select('products.*','brands.brand_name')
                    ->where('products.status',1)->where('hot_deal',1)->orderBy('id','desc')->limit(3)->get()
    @endphp

    <br><br>
    <!-- Deals of the week -->
    <div class="deals_featured">
        <div class="container">
            <div class="row">
                <div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">


                    <!-- Deals -->
                    <div class="deals">
                        <div class="deals_title">Deals of the Week</div>
                        <div class="deals_slider_container">

                            <!-- Deals Slider -->
                            <div class="owl-carousel owl-theme deals_slider">
                            @foreach($hot as $ht)
                                <!-- Deals Item -->
                                    <div class="owl-item deals_item">
                                        <div class="deals_image">
                                            <a href="{{ url('product/details/'.$ht->id.'/'.$ht->product_name) }}">
                                                <img src="{{asset($ht->image_one)}}" alt=""></div>
                                        <div class="deals_content">
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                                <div class="deals_item_category">{{$ht->brand_name}}</a></div>
                                                @if($ht->discount_price == NULL)
                                                @else
                                                    <div class="deals_item_price_a ml-auto">
                                                        £{{$ht->selling_price}}</div>

                                                @endif
                                            </div>
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                                <div class="deals_item_name">{{$ht->product_name}}</div>

                                                @if($ht->discount_price == NULL)
                                                    <div class="deals_item_price ml-auto">£{{$ht->selling_price}}</div>

                                                @else
                                                @endif

                                                @if($ht->discount_price != NULL)
                                                    <div class="deals_item_price ml-auto">£{{$ht->discount_price}}</div>
                                                @else
                                                @endif
                                            </div>
                                            <div class="available">
                                                <div class="available_line d-flex flex-row justify-content-start">
                                                    <div class="available_title">Available:
                                                        <span>{{ $ht->product_quantity }}</span></div>
                                                    <div class="sold_title ml-auto">Already sold: <span></span></div>
                                                </div>
                                                <div class="available_bar"><span style="width:17%"></span></div>
                                            </div>
                                            <div
                                                class="deals_timer d-flex flex-row align-items-center justify-content-start">
                                                <div class="deals_timer_title_container">
                                                    <div class="deals_timer_title">Hurry Up</div>
                                                    <div class="deals_timer_subtitle">Offer ends in:</div>
                                                </div>
                                                <div class="deals_timer_content ml-auto">
                                                    <div class="deals_timer_box clearfix" data-target-time="">
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_hr" class="deals_timer_hr"></div>
                                                            <span>hours</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_min" class="deals_timer_min"></div>
                                                            <span>mins</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_sec" class="deals_timer_sec"></div>
                                                            <span>secs</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                @endforeach
                            </div>

                        </div>

                        <div class="deals_slider_nav_container">
                            <div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i>
                            </div>
                            <div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i>
                            </div>
                        </div>
                    </div>
                    <!-- Recently Added -->
                    <div class="featured">
                        <div class="tabbed_container">
                            <div class="tabs">
                                <ul class="clearfix">
                                    <li class="active">Recently Added</li>

                                </ul>
                                <div class="tabs_line"><span></span></div>
                            </div>

                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="featured_slider slider">

                                @foreach($featured as $row)

                                    <!-- Slider Item -->
                                        <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset( $row->image_one )}}" alt=""
                                                             style="height: 120px; width: 140px;"></div>
                                                    <div class="product_content">

                                                        @if($row->discount_price == NULL)
                                                            <div class="product_price discount" style="color: black">
                                                                £{{ $row->selling_price }} </div>
                                                        @else
                                                            <div class="product_price discount" style="color:red">
                                                                £{{ $row->discount_price }}
                                                                <span>£{{ $row->selling_price }}</span></div>
                                                        @endif
                                                        <div class="product_name">
                                                            <div>
                                                                <a href="{{url('product/details/'.$row->id.'/'.$row->product_name)}}">{{str_limit($row->product_name, $limit = 15, $end = "...") }}</a>
                                                            </div>
                                                        </div>


                                                        <div class="product_extras">
                                                            <button id="{{$row->id}}"
                                                                    class="product_cart_button addcart"
                                                                    data-toggle="modal" data-target="#cartmodal"
                                                                    onclick="productview(this.id)">Add to Cart
                                                            </button>
                                                        </div>
                                                    </div>

                                                    <a href="{{URL::to('add/wishlist/'.$row->id)}}">
                                                        <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                    </a>
                                                    <ul class="product_marks">

                                                        @if($row->discount_price == NULL)
                                                            <li class="product_mark product_discount"
                                                                style="background: blue;">New
                                                            </li>
                                                        @else
                                                            <li class="product_mark product_discount">
                                                                @php
                                                                    $amount = $row->selling_price - $row->discount_price;
                                                                    $discount = $amount/$row->selling_price*100
                                                                @endphp
                                                                {{intval($discount)}}%
                                                            </li>
                                                        @endif
                                                    </ul>
                                                </div>
                                            </div>

                                    @endforeach
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    <br>
    <!-- Category One -->
    @php
        $cats = DB::table('categories')->skip(0)->first();
        $catid = $cats->id;
        $product = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get()
    @endphp
    <div class="category_one">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="tabbed_container">
                        <div class="tabs clearfix tabs-right">
                            <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                            <ul class="clearfix">
                                <li class="active"></li>

                            </ul>
                            <div class="tabs_line"><span></span></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12" style="z-index:1;">

                                <!-- Product Panel -->
                                <div class="product_panel panel active">
                                    <div class="arrivals_slider slider">

                                    @foreach($product as $row)
                                        <!-- Slider Item -->
                                            <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                                <div class="catone_slider_item">
                                                    <div class="border_active"></div>
                                                    <div
                                                        class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                        <div
                                                            class="product_image d-flex flex-column align-items-center justify-content-center">
                                                            <img src="{{ asset( $row->image_one )}}" alt=""
                                                                 style="height: 120px; width: 100px;"></div>
                                                        <div class="product_content">

                                                            @if($row->discount_price == NULL)
                                                                <div class="product_price discount"
                                                                     style="color: black">
                                                                    £{{ $row->selling_price }}</div>
                                                            @else
                                                                <div class="product_price discount" style="color: red">
                                                                    £{{ $row->discount_price }}
                                                                    <span>£{{ $row->selling_price }}</span></div>
                                                            @endif


                                                            <div class="product_name">
                                                                <div>{{ $row->product_name }}</a></div>
                                </div>
                                <div class="product_extras">

                                    <button id="{{$row->id}}" class="product_cart_button addcart" data-toggle="modal"
                                            data-target="#cartmodal" onclick="productview(this.id)">Add to Cart
                                    </button>
                                </div>
                            </div>

                            <a href="{{URL::to('add/wishlist/'.$row->id)}}">
                                <div class="product_fav"><i class="fas fa-heart"></i></div>
                            </a>

                            <ul class="product_marks">
                                @if($row->discount_price == NULL)
                                    <li class="product_mark product_discount" style="background: blue;">New</li>
                                @else
                                    <li class="product_mark product_discount">
                                        @php
                                            $amount = $row->selling_price - $row->discount_price;
                                            $discount = $amount/$row->selling_price*100

                                        @endphp

                                        {{ intval($discount) }}%

                                    </li>
                                @endif


                            </ul>
                        </div>
                    </div>
                    @endforeach

                </div>
                <div class="featured_slider_dots_cover"></div>
            </div>

        </div>


    </div>
    <!-- Category Two -->
    @php
        $cats = DB::table('categories')->skip(1)->first();
        $catid = $cats->id;

        $product = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get()
    @endphp
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                        <ul class="clearfix">
                            <li class="active"></li>

                        </ul>
                        <div class="tabs_line"><span></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">

                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">

                                @foreach($product as $row)
                                    <!-- Slider Item -->
                                        <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset( $row->image_one )}}" alt=""
                                                             style="height: 120px; width: 100px;"></div>
                                                    <div class="product_content">

                                                        @if($row->discount_price == NULL)
                                                            <div class="product_price discount" style="color: black">
                                                                £{{ $row->selling_price }}</div>
                                                        @else
                                                            <div class="product_price discount" style="color: red">
                                                                £{{ $row->discount_price }}
                                                                <span>£{{ $row->selling_price }}</span></div>
                                                        @endif


                                                        <div class="product_name">
                                                            <div>{{ $row->product_name }}</a></div>
                            </div>
                            <div class="product_extras">
                                <button id="{{$row->id}}" class="product_cart_button addcart" data-toggle="modal"
                                        data-target="#cartmodal" onclick="productview(this.id)">Add to Cart
                                </button>
                            </div>
                        </div>


                        <a href="{{URL::to('add/wishlist/'.$row->id)}}">
                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                        </a>
                        <ul class="product_marks">
                            @if($row->discount_price == NULL)
                                <li class="product_mark product_discount" style="background: blue;">New</li>
                            @else
                                <li class="product_mark product_discount">
                                    @php
                                        $amount = $row->selling_price - $row->discount_price;
                                        $discount = $amount/$row->selling_price*100

                                    @endphp

                                    {{ intval($discount) }}%

                                </li>
                            @endif


                        </ul>
                    </div>
                </div>
                @endforeach

            </div>
            <div class="featured_slider_dots_cover"></div>
        </div>

    </div>
    <!-- Category Three -->
    @php
        $cats = DB::table('categories')->skip(2)->first();
        $catid = $cats->id;
        $product = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get()
    @endphp
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                        <ul class="clearfix">
                            <li class="active"></li>

                        </ul>
                        <div class="tabs_line"><span></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">

                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">

                                @foreach($product as $row)
                                    <!-- Slider Item -->
                                        <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset( $row->image_one )}}" alt=""
                                                             style="height: 120px; width: 100px;"></div>
                                                    <div class="product_content">

                                                        @if($row->discount_price == NULL)
                                                            <div class="product_price discount" style="color: black">
                                                                £{{ $row->selling_price }}</div>
                                                        @else
                                                            <div class="product_price discount" style="color: red">
                                                                £{{ $row->discount_price }}
                                                                <span>£{{ $row->selling_price }}</span></div>
                                                        @endif


                                                        <div class="product_name">
                                                            <div>{{ $row->product_name }}</a></div>
                            </div>
                            <div class="product_extras">
                                <button id="{{$row->id}}" class="product_cart_button addcart" data-toggle="modal"
                                        data-target="#cartmodal" onclick="productview(this.id)">Add to Cart
                                </button>
                            </div>
                        </div>

                        <a href="{{URL::to('add/wishlist/'.$row->id)}}">
                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                        </a>


                        <ul class="product_marks">
                            @if($row->discount_price == NULL)
                                <li class="product_mark product_discount" style="background: blue;">New</li>
                            @else
                                <li class="product_mark product_discount">
                                    @php
                                        $amount = $row->selling_price - $row->discount_price;
                                        $discount = $amount/$row->selling_price*100

                                    @endphp

                                    {{ intval($discount) }}%

                                </li>
                            @endif


                        </ul>
                    </div>
                </div>
                @endforeach

            </div>
            <div class="featured_slider_dots_cover"></div>
        </div>

    </div>
    <!-- Category Four -->
    @php
        $cats = DB::table('categories')->skip(3)->first();
        $catid = $cats->id;
        $product = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get()
    @endphp
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                        <ul class="clearfix">
                            <li class="active"></li>

                        </ul>
                        <div class="tabs_line"><span></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">

                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">

                                @foreach($product as $row)
                                    <!-- Slider Item -->
                                        <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset( $row->image_one )}}" alt=""
                                                             style="height: 120px; width: 100px;"></div>
                                                    <div class="product_content">

                                                        @if($row->discount_price == NULL)
                                                            <div class="product_price discount" style="color: black">
                                                                £{{ $row->selling_price }}</div>
                                                        @else
                                                            <div class="product_price discount" style="color: red">
                                                                £{{ $row->discount_price }}
                                                                <span>£{{ $row->selling_price }}</span></div>
                                                        @endif


                                                        <div class="product_name">
                                                            <div>{{ $row->product_name }}</a></div>
                            </div>
                            <div class="product_extras">
                                <button id="{{$row->id}}" class="product_cart_button addcart" data-toggle="modal"
                                        data-target="#cartmodal" onclick="productview(this.id)">Add to Cart
                                </button>
                            </div>
                        </div>


                        <a href="{{URL::to('add/wishlist'.$row->id)}}">
                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                        </a>


                        <ul class="product_marks">
                            @if($row->discount_price == NULL)
                                <li class="product_mark product_discount" style="background: blue;">New</li>
                            @else
                                <li class="product_mark product_discount">
                                    @php
                                        $amount = $row->selling_price - $row->discount_price;
                                        $discount = $amount/$row->selling_price*100

                                    @endphp

                                    {{ intval($discount) }}%

                                </li>
                            @endif


                        </ul>
                    </div>
                </div>
                @endforeach

            </div>
            <div class="featured_slider_dots_cover"></div>
        </div>

    </div>
    <!-- Category Five -->
    @php
        $cats = DB::table('categories')->skip(4)->first();
        $catid = $cats->id;
        $product = DB::table('products')->where('category_id',$catid)->where('status',1)->limit(10)->orderBy('id','DESC')->get()

    @endphp
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                        <ul class="clearfix">
                            <li class="active"></li>

                        </ul>
                        <div class="tabs_line"><span></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">

                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">

                                @foreach($product as $row)
                                    <!-- Slider Item -->
                                        <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset( $row->image_one )}}" alt=""
                                                             style="height: 120px; width: 100px;"></div>
                                                    <div class="product_content">

                                                        @if($row->discount_price == NULL)
                                                            <div class="product_price discount" style="color: red">
                                                                £{{ $row->selling_price }}<span></div>
                                                        @else
                                                            <div class="product_price discount" style="color: black">
                                                                £{{ $row->discount_price }}
                                                                <span>£{{ $row->selling_price }}</span></div>
                                                        @endif


                                                        <div class="product_name">
                                                            <div>{{ $row->product_name }}</a></div>
                            </div>
                            <div class="product_extras">
                                <div class="product_extras">
                                    <button id="{{$row->id}}" class="product_cart_button addcart"
                                            data-toggle="modal" data-target="#cartmodal"
                                            onclick="productview(this.id)">Add to Cart
                                    </button>
                                </div>
                            </div>


                            <a href="{{URL::to('add/wishlist'.$row->id)}}">
                                <div class="product_fav"><i class="fas fa-heart"></i></div>
                            </a>


                            <ul class="product_marks">
                                @if($row->discount_price == NULL)
                                    <li class="product_mark product_discount" style="background: blue;">New</li>
                                @else
                                    <li class="product_mark product_discount">
                                        @php
                                            $amount = $row->selling_price - $row->discount_price;
                                            $discount = $amount/$row->selling_price*100

                                        @endphp

                                        {{ intval($discount) }}%

                                    </li>
                                @endif


                            </ul>
                        </div>
                    </div>
                    @endforeach

                </div>
                <div class="featured_slider_dots_cover"></div>
            </div>

        </div>


    </div>

    <!-- Trends -->

    <div class="trends">
        <div class="trends_background" style="background-image:url(images/trends_background.jpg)"></div>
        <div class="trends_overlay"></div>
        <div class="container">
            <div class="row">

                <!-- Trends Content -->
                <div class="col-lg-3">
                    <div class="trends_container">
                        <h2 class="trends_title">Buy One Get One</h2>
                        <div class="trends_text"><p>Buy 1 Product. Get 2</p></div>
                        <div class="trends_slider_nav">
                            <div class="trends_prev trends_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                            <div class="trends_next trends_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                        </div>
                    </div>
                </div>


            @php
                $buyget = DB::table('products')
                           ->join('brands','products.brand_id','brands.id')
                           ->select('products.*','brands.brand_name')
                           ->where('status',1)->where('buyone_getone',1)->orderBy('id','DESC')->limit(6)->get()

            @endphp

            <!-- Trends Slider -->
                <div class="col-lg-9">
                    <div class="trends_slider_container">

                        <!-- Trends Slider -->

                        <div class="owl-carousel owl-theme trends_slider">
                        @foreach($buyget as $row)
                            <!-- Trends Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div
                                            class="trends_image d-flex flex-column align-items-center justify-content-center">
                                            <a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}"><img
                                                    src="{{ asset( $row->image_one )}}" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a
                                                    href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}">{{ $row->product_name }}</a>
                                            </div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a
                                                        href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}"> </a>
                                                </div>


                                                @if($row->discount_price == NULL)
                                                    <div class="product_price discount">£{{ $row->selling_price }}
                                                        <span></div>
                                                @else
                                                    <div class="product_price discount">£{{ $row->discount_price }}
                                                        <span>£{{ $row->selling_price }}</span></div>
                                                @endif

                                                <div class="product_extras">
                                                    <button id="{{$row->id}}" class="product_cart_button addcart"
                                                            data-toggle="modal" data-target="#cartmodal"
                                                            onclick="productview(this.id)">Add to Cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_new">2for1</li>
                                        </ul>
                                        <a href="{{URL::to('add/wishlist/ '.$row->id)}}">
                                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                                        </a>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Newsletter -->
    <div class="newsletter">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div
                        class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
                        <div class="newsletter_title_container">
                            <div class="newsletter_icon"><img src="{{asset('public/frontend/images/send.png')}}"
                                                              alt=""></div>
                            <div class="newsletter_title">Sign up for Newsletter</div>
                            <div class="newsletter_text"><p>Weekly 10%, 20% Coupons</p></div>
                        </div>
                        <div class="newsletter_content clearfix">
                            <form action="{{route('store.newsletter')}}" method="post" class="newsletter_form">
                                @csrf
                                <input type="email" class="newsletter_input" required="required"
                                       placeholder="Enter your email address" name="email">
                                <button class="newsletter_button" type="submit">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="cartmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLavel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLavel">Quick Buy</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>


                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <img src="" id="pimage" style="height: 220px; width: 200px;">
                                <div class="card-body">
                                    <h5 class="card-title text-center" id="pname"></h5>

                                </div>

                            </div>

                        </div>


                        <div class="col-md-4">
                            <ul class="list-group">
                                <li class="list-group-item">Product Code:<span id="pcode"></span></li>
                                <li class="list-group-item">Category: <span id="pcat"></span></li>
                                <li class="list-group-item">Subcategory: <span id="psub"></span></li>
                                <li class="list-group-item">Brand:<span id="pbrand"></span></li>
                                <li class="list-group-item">Stock: <span class="badge"
                                                                         style="background: green;color: white;"> Available</span>
                                </li>
                            </ul>

                        </div>

                        <div class="col-md-4">

                            <form method="post" action="{{ route('insert.into.cart') }}">
                                @csrf
                                <input type="hidden" name="product_id" id="product_id">
                                <div class="form-group">
                                    <label for="exampleInputcolor">Color</label>
                                    <select name="color" class="form-control" id="color">

                                    </select>

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputsize">Size</label>
                                    <select name="size" class="form-control" id="size">

                                    </select>

                                </div>


                                <div class="form-group">
                                    <label for="exampleInputquantity">Quantity</label>
                                    <input type="number" class="form-control" name="qty" value="1">
                                </div>


                                <button type="submit" class="btn btn-primary">Add to Cart</button>

                            </form>

                        </div>


                    </div>
                </div>


                <div class="modal-footer">

                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        function productview(id) {
            $.ajax({
                url: "{{ url('/cart/product/view/') }}/" + id,
                type: "GET",
                dataType: "json",
                success: function (data) {
                    $('#pcode').text(data.product.product_code);
                    $('#pcat').text(data.product.category_name);
                    $('#psub').text(data.product.subcategory_name);
                    $('#pbrand').text(data.product.brand_name);
                    $('#pname').text(data.product.product_name);
                    $('#pimage').attr('src', data.product.image_one);
                    $('#product_id').val(data.product.id);

                    var d = $('select[name="color"]').empty();
                    $.each(data.color, function (key, value) {
                        $('select[name="color"]').append('<option value="' + value + '">' + value + '</option>');
                    });

                    var d = $('select[name="size"]').empty();
                    $.each(data.size, function (key, value) {
                        $('select[name="size"]').append('<option value="' + value + '">' + value + '</option>');
                    });


                }
            })
        }


    </script>
    <script type="text/javascript">
        document.body.appendChild(document.getElementById('cartmodal'));
    </script>

    {{--    <script type="text/javascript">--}}

    {{--        $(document).ready(function(){--}}
    {{--            $('.addcart').on('click', function(){--}}
    {{--                var id = $(this).data('id');--}}
    {{--                if (id) {--}}
    {{--                    $.ajax({--}}
    {{--                        url: " {{ url('/add/to/cart/') }}/"+id,--}}
    {{--                        type:"GET",--}}
    {{--                        datType:"json",--}}
    {{--                        success:function(data){--}}
    {{--                            const Toast = Swal.mixin({--}}
    {{--                                toast: true,--}}
    {{--                                position: 'top-end',--}}
    {{--                                showConfirmButton: false,--}}
    {{--                                timer: 3000,--}}
    {{--                                timerProgressBar: true,--}}
    {{--                                onOpen: (toast) => {--}}
    {{--                                    toast.addEventListener('mouseenter', Swal.stopTimer)--}}
    {{--                                    toast.addEventListener('mouseleave', Swal.resumeTimer)--}}
    {{--                                }--}}
    {{--                            })--}}

    {{--                            if ($.isEmptyObject(data.error)) {--}}

    {{--                                Toast.fire({--}}
    {{--                                    icon: 'success',--}}
    {{--                                    title: data.success--}}
    {{--                                })--}}
    {{--                            }else{--}}
    {{--                                Toast.fire({--}}
    {{--                                    icon: 'error',--}}
    {{--                                    title: data.error--}}
    {{--                                })--}}
    {{--                            }--}}


    {{--                        },--}}
    {{--                    });--}}

    {{--                }else{--}}
    {{--                    alert('danger');--}}
    {{--                }--}}
    {{--            });--}}

    {{--        });--}}


    {{--    </script> --}}

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>


@endsection

