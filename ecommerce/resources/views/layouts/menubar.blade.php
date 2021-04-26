
@php

    $category = DB::table('categories')->get();
    $subcategory = DB::table('subcategories')->get();
@endphp

<nav class="main_nav">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="main_nav_content d-flex flex-row">

                    <!-- Categories Menu -->

                    <div class="cat_menu_container">
                        <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                            <div class="cat_burger"><span></span><span></span><span></span></div>
                            <div class="cat_menu_text">categories</div>
                        </div>

                        <ul class="cat_menu">

                            @foreach($category as $cat)
                                <li class="hassubs">
                                    <a href="{{ url('all_category/'.$cat->id) }}">{{ $cat->category_name }}<i class="fas fa-chevron-right"></i></a>
                                    <ul>

                                        @php
                                            $subcategory = DB::table('subcategories')->where('category_id',$cat->id)->get();
                                        @endphp

                                        @foreach($subcategory as $row)
                                            <li class="hassubs">
                                                <a href="{{ url('products/'.$row->id) }}">{{ $row->subcategory_name }}<i class="fas fa-chevron-right"></i></a>

                                            </li>
                                        @endforeach

                                    </ul>
                                </li>
                            @endforeach

                        </ul>
                    </div>

                    <!-- Main Nav Menu -->

                    <div class="main_nav_menu">
                        <ul class="standard_dropdown main_nav_dropdown">
                            <li><a href="{{ route('blog.post') }}" style="padding-left: 20px">Blog<i class="fas fa-chevron-down"></i></a></li>
                            <li><a href="{{ route('contact.page') }}">Contact<i class="fas fa-chevron-down contactform"></i></a></li>

                        </ul>
                    </div>

                    <!-- Menu Trigger -->

                    <div class="menu_trigger_container  cat_menu_container ml-auto">
                        <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                            <div class="menu_burger">
                                <div class="menu_trigger_text">menu</div>
                                <div class="cat_burger menu_burger_inner">
                                    <span></span><span></span><span></span></div>
                            </div>
                        </div>
                        <ul class="cat_menu">
                            <li><a href="#">Home<i class="fas fa-chevron-down"></i></a></li>
                            <li><a href="{{ route('blog.post') }}">Blog<i class="fas fa-chevron-down"></i></a></li>
                            <li><a href="{{ route('contact.page') }}">Contact<i class="fas fa-chevron-down contactform"></i></a></
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</nav>

