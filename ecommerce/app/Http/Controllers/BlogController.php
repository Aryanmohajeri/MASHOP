<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;


class BlogController extends Controller
{
    public function blogPost(){
        $post = DB::table('posts')
            ->join('post_category','posts.category_id','post_category.id')->select('posts.*','post_title_en',
            'post_category.category_name_es') ->get();

       //return response()->json($post); for testing

        return view('pages.blog',compact('post'));
    }

    public function englishLanguage(){
        Session::get('lang');
        Session()->forget('lang');
        Session::put('lang','english');
        return redirect()->back();
    }
    public function spanishLanguage(){
        Session::get('lang');
        Session()->forget('lang');
        Session::put('lang','spanish');
        return redirect()->back();
    }

    public function blogSingle($id){
        $posts = DB::table('posts')->where('id', $id)->get();
        return view('pages.blog_single',compact('posts'));
    }
}
