<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;

class ReturnController extends Controller
{

    public function Return()
    {

        $order = DB::table('orders')->where('user_id', Auth::id())->where('status', 3)->orderBy('id', 'DESC')->limit(5)->get();

        return view('pages.returnorder', compact('order'));


    }


    public function requestReturn($id)
    {
        DB::table('orders')->where('id', $id)->update(['return_order' => 1]);
        $notification = array(
            'messege' => 'Return Case Opened',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);


    }

}
