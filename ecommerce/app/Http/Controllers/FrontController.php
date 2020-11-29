<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontController extends Controller
{
    public function storenewsletter(Request $request){
        $validateData = $request->validate([
           'email' => 'required|unique:newsletters|max:55',
        ]);
        $data = array();
        $data['email'] = $request->email;
        DB::table('newsletters')->insert($data);
        $notification = array(
            'messege' => 'Thank You for subscribing',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function orderTraking(Request $request){
        $code = $request->code;

        $track = DB::table('orders')->where('order_number',$code)->first();
        if ($track) {

            // echo "<pre>";
            // print_r($track);
            return view('pages.tracking',compact('track'));

        }else{
            $notification=array(
                'messege'=>'Order Number Invalid',
                'alert-type'=>'error'
            );
            return Redirect()->back()->with($notification);

        }



    }
}
