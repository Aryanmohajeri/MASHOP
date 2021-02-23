<?php

namespace App\Http\Controllers\Admin;
use App\Mail\InvoiceMail;
use Mail;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class RaffleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function viewRaffle($id){
        $entries = DB::table('raffles')
            ->join('users','raffles.user_id','users.id')
            ->select('raffles.*','users.name')
            ->where('raffles.product_id','=',$id)
            ->get();
        // return response()->json($product);
        return view('admin.raffle.entries',compact('entries'));
    }

    public function index(){
        $product = DB::table('products')
            ->join('categories','products.category_id','categories.id')
            ->join('brands','products.brand_id','brands.id')
            ->select('products.*','categories.category_name','brands.brand_name')
            ->where('products.raffle','=',1)
            ->get();
        // return response()->json($product);
        return view('admin.raffle.index',compact('product'));

    }


    public function acceptRaffle($id){
        $raffle = DB::table('raffles')->where('raffle_id',$id)->get();
        $raffle->update(['accepted'=>1]);
        $notification=array(
            'messege'=>'Raffle Successfully accepted',
            'alert-type'=>'success'
        );
//        $email = Auth::user()->email;
//        Mail::to($email)->send(new InvoiceMail($data));
        return Redirect()->back()->with($notification);
    }

    public function deleteRaffle($id){

        DB::table('raffles')->where('raffle_id',$id)->delete();
        $notification=array(
            'messege'=>'Raffle Successfully Rejected',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function randomRaffle(){
        $raffles = DB::table('raffles')->select('raffles.*')->get();
        if(count($raffles )>0) {
            $random_index = rand(1, count($raffles));
            acceptRaffle($random_index);
        }
        $notification=array(
            'messege'=>'Raffle Successfully accepted',
            'alert-type'=>'success'
        );

        return Redirect()->back()->with($notification);
    }




}
