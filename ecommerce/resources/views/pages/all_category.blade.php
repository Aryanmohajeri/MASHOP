            @extends('layouts.app')

            @section('content')
            @include('layouts.menubar')

            <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_styles.css') }}">
            <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/shop_responsive.css') }}">

                <div class="home">
                    <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
                    <div class="home_overlay"></div>
                    <div class="home_content d-flex flex-column align-items-center justify-content-center">
                        @foreach($catname as $row)
                            <h2 class="home_title">{{$row->category_name}} </h2>
                        @endforeach
                    </div>
                </div>

                <!-- Shop -->

                <div class="shop">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3">

                                <!-- Shop Sidebar -->
                                <div class="shop_sidebar">
                                    <div class="sidebar_section">
                                        <div class="sidebar_title">Sub-Categories</div>
                                        <ul class="sidebar_categories">
                                            @php
                                                $subcategory =  DB::table('subcategories')->where('category_id',$id)->get();
                                            @endphp
                                            @foreach($subcategory as $subcat)
                                                <li><a href="{{ url('products/'.$subcat->id) }}">{{ $subcat->subcategory_name }}</a></li>
                                            @endforeach

                                        </ul>
                                    </div>
                                    <div class="sidebar_section filter_by_section">
                                        <div class="sidebar_title">Filter By</div>
                                        <div class="sidebar_subtitle">Price</div>
                                        <div class="filter_price">
                                            <div id="slider-range" class="slider_range"></div>
                                            <p>Range: </p>
                                            <p><input type="text" id="amount" class="amount" readonly style="border:0; font-weight:bold;"></p>
                                        </div>
                                    </div>


                                </div>

                            </div>

                            <div class="col-lg-9">

                                <!-- Shop Content -->

                                <div class="shop_content">
                                    <div class="shop_bar clearfix">
                                        <div class="shop_product_count"><span>{{count($category_all)}}</span> products found</div>
                                        <div class="shop_sorting">
                                            <span>Sort by:</span>
                                            <ul>
                                                <li>
                                                    <a href="{{URL::current()}}" class="sort-font">Name</a>
                                                    <ul>
                                                        <li class="shop_sorting_button"><a href="{{URL::current()."?sort=price_asc"}}" class="sort-font"> Price - Low to High </a></li>
                                                        <li class="shop_sorting_button"><a href="{{URL::current()."?sort=price_desc"}}" class="sort-font"> Price - High to Low </a></li>
                                                        <li class="shop_sorting_button"><a href="{{URL::current()."?sort=price_created"}}" class="sort-font">Old - New</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="product_grid row">
                                        <div class="product_grid_border"></div>

                                 @foreach($category_all as $pro)
                                    @if($pro->status == 1)
                                        <!-- Product Item -->
                                        <a href="{{ url('product/details/'.$pro->id.'/'.$pro->product_name) }}">
                                        <div class="product_item is_new" >
                                            <div class="product_border"></div>
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset($pro->image_one) }}" alt="" style="height: 100px; width: 100px;"></div>
                                            <div class="product_content">


                                  @if($pro->discount_price == NULL)
            <div class="product_price discount" style="color: black">£{{ $pro->selling_price }}<span> </div>
                  @else
            <div class="product_price discount" style="color: red">£{{ $pro->discount_price }}<span>£{{ $pro->selling_price }}</span></div>
                  @endif

             <div class="product_name"><div>{{ $pro->product_name  }}</div></div>
                                            </div>


                                            <a/>
                                            <div class="product_fav"><i class="fas fa-heart"></i></div>

                                             <ul class="product_marks">
                   @if($pro->discount_price == NULL)
                   <li class="product_mark product_new" style="background: blue;">New</li>
                   @else
                                   <li class="product_mark product_new" style="background: red;">
                                   @php
                                     $amount = $pro->selling_price - $pro->discount_price;
                                     $discount = $amount/$pro->selling_price*100;

                                   @endphp

                                   {{ intval($discount) }}%

                                  </li>
                                    @endif
                        </ul>
                                        </div>
            @endif

                                      @endforeach

                                    </div>

                                    <!-- Shop Page Navigation -->

                                    <div class="shop_page_nav d-flex flex-row">


                                           {{ $category_all->links() }}


                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>




            @endsection
