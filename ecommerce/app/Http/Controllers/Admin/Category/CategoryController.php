<?php

namespace App\Http\Controllers\Admin\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Admin\Category;
use DB;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
//CRUD FUNCTIONS

    public function category(){
        $category = Category::all();  ##Gets all the category data
        return view('admin.category.category', compact('category'));
        //return view page in admin-category-category
    }

    public function storecategory(Request $request){
        $validateData = $request->validate([
           'category_name' => 'required|unique:categories|max:255',
        ]);

       // $data= array();
        //$data['category_name']=$request->category_name;
        //DB::table('categories')->insert($data); ##Insert Data into category table


        $category = new Category();
        $category->category_name = $request-> category_name;
        $category->save(); ##Saves Data

        $notification=array(
            'messege'=>'Category Added Successfully',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
    }


    public function deletecategory($id){
        DB::table('categories')->where('id',$id)->delete();
        $notification=array(
            'messege'=>'Category Deleted Successfully',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
    }


    public function editcategory($id){
        $category = DB::table('categories')->where('id',$id)->first();
        return view('admin.category.edit_category',compact('category'));
    }

    public function updatecategory(Request $request, $id){
        $validateData = $request->validate([
            'category_name' => 'required|max:255',
        ]);

        $data= array();
        $data['category_name']=$request-> category_name;
        $update= DB::table('categories')->where('id',$id)-> update($data);

        if ($update){
            $notification=array(
                'messege'=>'Category Updated Successfully',
                'alert-type'=>'success'
            );
            return Redirect()->route('categories')->with($notification); ##when category updated, a message is shown
        }else{
            $notification=array(
                'messege'=>'Nothing To Update',
                'alert-type'=>'error'
            );
            return Redirect()->route('categories')->with($notification); ##error message is shown when nothing is there to update
        }


    }
}
