@extends('layouts.app')

@section('content')
    @include('layouts.menubar')

    <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_styles.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_responsive.css') }}">

    <!-- Wishlist -->
    <div class="cart_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart_container">
                        <div class="cart_title">Wishlist Product</div>
                        <div class="wishlist_items">
                            <ul class="wishlist_list">

                                @foreach($product as $row)

                                    <li class="cart_item clearfix">
                                        <div class="cart_item_image text-center"><br><img
                                                src="{{ asset($row->image_one) }} " style="width: 70px; width: 70px;"
                                                alt=""></div>
                                        <div
                                            class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                            <div class="cart_item_name cart_info_col">
                                                <div class="cart_item_title">Name</div>
                                                <div class="cart_item_text">{{ $row->product_name  }}</div>
                                            </div>
                                            <div class="cart_item_name cart_info_col">
                                                <div class="cart_item_title">Price</div>
                                                <div class="cart_item_text">{{ $row->selling_price  }}</div>
                                            </div>

                                            @if($row->product_color == NULL)

                                            @else
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Color</div>
                                                    <div class="cart_item_text"> {{ $row->product_color }}</div>
                                                </div>
                                            @endif


                                            @if($row->product_size == NULL)

                                            @else
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Size</div>
                                                    <div class="cart_item_text"> {{ $row->product_size }}</div>
                                                </div>
                                            @endif
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
