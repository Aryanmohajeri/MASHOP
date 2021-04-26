<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TrackingController extends Controller
{
    public function orderTracking(Request $request)
    {
        $code = $request->code;

        $track = DB::table('orders')->where('order_number', $code)->first();
        if ($track) {

            // echo "<pre>";
            // print_r($track);
            return view('pages.tracking', compact('track'));

        } else {
            $notification = array(
                'messege' => 'Order Number Invalid',
                'alert-type' => 'error'
            );
            return Redirect()->back()->with($notification);

        }


    }

    public function viewOrder(Request $request)
    {
        $code = $request->code;

        $track = DB::table('orders')->where('order_number', $code)->first();
        if ($track) {

            // echo "<pre>";
            // print_r($track);
            return view('pages.tracking', compact('track'));

        } else {
            $notification = array(
                'messege' => 'Order Number Invalid',
                'alert-type' => 'error'
            );
            return Redirect()->back()->with($notification);

        }


    }
}
