<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Image;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function blogCatlist()
    {
        $blogcat = DB::table('post_category')->get();
        return view('admin.blog.category.index', compact('blogcat'));

    }

    public function blogCatstore(Request $request)
    {
        $validateDate = $request->validate([
            'category_name_en' => 'required|max:100',
            'category_name_es' => 'required|max:100',
        ]);

        $data = array();
        $data['category_name_en'] = $request->category_name_en;
        $data['category_name_es'] = $request->category_name_es;
        DB::table('post_category')->insert($data);

        $notification = array(
            'messege' => 'Blog Category Added Successfully',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function deleteBlogcat($id)
    {
        DB::table('post_Category')->where('id', $id)->delete();
        $notification = array(
            'messege' => 'Blog Category Deleted Successfully',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function editBlogcat($id)
    {
        $blogcatedit = DB::table('post_category')->where('id', $id)->first();
        return view('admin.blog.category.edit', compact('blogcatedit'));

    }

    public function updateBlogcat(Request $request, $id)
    {
        $data = array();
        $data['category_name_en'] = $request->category_name_en;
        $data['category_name_es'] = $request->category_name_es;
        DB::table('post_category')->where('id', $id)->update($data);

        $notification = array(
            'messege' => 'Blog Category Updated Successfully',
            'alert-type' => 'success'
        );
        return Redirect()->route('add.blog.categorylist')->with($notification);
    }

    public function create()
    {
        $blogcategory = DB::table('post_category')->get();
        return view('admin.blog.create', compact('blogcategory'));
    }

    public function store(Request $request){

        $data = array();
        $data['post_title_en'] = $request->post_title_en;
        $data['post_title_es'] = $request->post_title_es;
        $data['category_id'] = $request->category_id;
        $data['details_en'] = $request->details_en;
        $data['details_es'] = $request->details_es;

        $post_image = $request->file('post_image');

        if ($post_image) {
            $post_image_name = hexdec(uniqid()).'.'.$post_image->getClientOriginalExtension();
            Image::make($post_image)->resize(400,200)->save('public/media/post/'.$post_image_name);
            $data['post_image'] = 'public/media/post/'.$post_image_name;

            DB::table('posts')->insert($data);
            $notification=array(
                'messege'=>'Post Inserted Successfully',
                'alert-type'=>'success'
            );
            return Redirect()->back()->with($notification);

        }else{
            $data['post_image']='';
            DB::table('posts')->insert($data);
            $notification=array(
                'messege'=>'Post Inserted Without Image',
                'alert-type'=>'success'
            );
            return Redirect()->back()->with($notification);

        }
    }

    public function index(){

        $post = DB::table('posts')->join('post_category', 'posts.category_id',
            'post_category.id')
            ->select('posts.*','post_category.category_name_en')
            ->get();
        return view('admin.blog.index', compact('post'));
        //return response()->json($post);
    }


    public function deletePost($id){
        $post = DB::table('posts')->where('id',$id)->first();
        $image = $post->post_image;
        unlink($image);

        DB::table('posts')->where('id',$id)->delete();
        $notification=array(
            'messege'=>'Post Deleted Successfully',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
    }


    public function editPost($id){
        $post = DB::table('posts')->where('id',$id)->first();
        return view('admin.blog.edit',compact('post'));

    }

    public function updatePost(Request $request,$id){

        $oldimage = $request->old_image;

        $data = array();
        $data['post_title_en'] = $request->post_title_en;
        $data['post_title_es'] = $request->post_title_es;
        $data['category_id'] = $request->category_id;
        $data['details_en'] = $request->details_en;
        $data['details_es'] = $request->details_es;

        $post_image = $request->file('post_image');

        if ($post_image) {
            unlink($oldimage);
            $post_image_name = hexdec(uniqid()).'.'.$post_image->getClientOriginalExtension();
            Image::make($post_image)->resize(400,200)->save('public/media/post/'.$post_image_name);
            $data['post_image'] = 'public/media/post/'.$post_image_name;

            DB::table('posts')->where('id',$id)->update($data);
            $notification=array(
                'messege'=>'Post Updated Successfully',
                'alert-type'=>'success'
            );
            return Redirect()->route('all.blog.post')->with($notification);

        }else{
            $data['post_image']= $oldimage;
            DB::table('posts')->where('id',$id)->update($data);
            $notification=array(
                'messege'=>'Post Updated Without Image',
                'alert-type'=>'success'
            );
            return Redirect()->back()->with($notification);

        }
    }
}
