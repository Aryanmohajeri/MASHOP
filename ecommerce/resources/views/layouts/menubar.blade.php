
@php

    $category = DB::table('categories')->get();
@endphp

<nav class="main_nav">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="main_nav_content flex-row">
                    <!-- Main Nav Menu -->
                    <div class="main_nav_menu ml-auto">
                        <ul class="standard_dropdown main_nav_dropdown">
                            @foreach($category as $cat)
                                <li class="hassubs">
                                    <a href="{{ url('all_category/'.$cat->id) }}">{{ $cat->category_name }}<i class="fas fa-chevron-down"></i></a>
                                    <ul>
                                        @php
                                            $subcategory = DB::table('subcategories')->where('category_id',$cat->id)->get();
                                        @endphp

                                        @foreach($subcategory as $row)
                                            <li class="hassubs">
                                                <a href="{{ url('subcategories/'.$row->id) }}">{{ $row->subcategory_name }}<i class="fas fa-chevron-down"></i></a>

                                            </li>
                                        @endforeach

                                    </ul>
                                </li>
                            @endforeach

                            <li><a href="{{ route('blog.post') }}">Blog<i class="fas fa-chevron-down"></i></a></li>

                            <li><a href="{{ route('contact.page') }}">Contact<i class="fas fa-chevron-down"></i></a></li>
                        </ul>
                    </div>


                </div>
            </div>
        </div>
    </div>
</nav>

<!-- Menu -->

<div class="page_menu">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page_menu_content">

                    <div class="page_menu_search">
                        <form action="#">
                            <input type="search" required="required" class="page_menu_search_input" placeholder="Search for products...">
                        </form>
                    </div>
                    <ul class="page_menu_nav">
                        <li class="page_menu_item has-children">
                            <a href="#">Language<i class="fa fa-angle-down"></i></a>
                            <ul class="page_menu_selection">
                                <li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
                            </ul>
                        </li>
                        <li class="page_menu_item has-children">
                            <a href="#">Currency<i class="fa fa-angle-down"></i></a>
                            <ul class="page_menu_selection">
                                <li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">GBP British Pound<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">JPY Japanese Yen<i class="fa fa-angle-down"></i></a></li>
                            </ul>
                        </li>
                        <li class="page_menu_item">
                            <a href="#">Home<i class="fa fa-angle-down"></i></a>
                        </li>
                        <li class="page_menu_item has-children">
                            <a href="#">Super Deals<i class="fa fa-angle-down"></i></a>
                            <ul class="page_menu_selection">
                                <li><a href="#">Super Deals<i class="fa fa-angle-down"></i></a></li>
                                <li class="page_menu_item has-children">
                                    <a href="#">Menu Item<i class="fa fa-angle-down"></i></a>
                                    <ul class="page_menu_selection">
                                        <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                        <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                            </ul>
                        </li>
                        <li class="page_menu_item has-children">
                            <a href="#">Featured Brands<i class="fa fa-angle-down"></i></a>
                            <ul class="page_menu_selection">
                                <li><a href="#">Featured Brands<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                            </ul>
                        </li>
                        <li class="page_menu_item has-children">
                            <a href="#">Trending Styles<i class="fa fa-angle-down"></i></a>
                            <ul class="page_menu_selection">
                                <li><a href="#">Trending Styles<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                                <li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
                            </ul>
                        </li>
                        <li class="page_menu_item"><a href="blog.html">blog<i class="fa fa-angle-down"></i></a></li>
                        <li class="page_menu_item"><a href="contact.html">contact<i class="fa fa-angle-down"></i></a></li>
                    </ul>

                    <div class="menu_contact">
                        <div class="menu_contact_item"><div class="menu_contact_icon"><img src="{{ asset('public/frontend/images/phone_white.png')}}" alt=""></div>+38 068 005 3570</div>
                        <div class="menu_contact_item"><div class="menu_contact_icon"><img src="{{ asset('public/frontend/images/mail_white.png')}}" alt=""></div><a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</header>


