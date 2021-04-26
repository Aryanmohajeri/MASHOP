<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsletterController extends Controller
{
    public function newsLetter(){
        $sub = DB::table('newsletters')->get();
        return view('admin.NewsLetter.newsletter',compact('sub'));
    }

    public function deleteSub($id){
        DB::table('newsletters')->where('id',$id)->delete();
        $notification = array(
            'messege' => 'Subscriber Deleted Successfully',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }
}
