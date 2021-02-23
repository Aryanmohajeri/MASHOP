<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class SettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function siteSetting(){

        $setting = DB::table('sitesetting')->first();
        return view('admin.setting.site_setting',compact('setting'));

    }
    public function updateSiteSetting(Request $request){

        $id = $request->id;

        $data = array();
        $data['phone_one'] = $request->phone_one;
        $data['phone_two'] = $request->phone_two;
        $data['email'] = $request->email;
        $data['company_name'] = $request->company_name;
        $data['company_address'] = $request->company_address;
        $data['facebook'] = $request->facebook;
        $data['youtube'] = $request->youtube;
        $data['instagram'] = $request->instagram;
        $data['twitter'] = $request->twitter;
        DB::table('sitesetting')->where('id',$id)->update($data);
        $notification=array(
            'messege'=>'Site Setting Updated',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);

    }
    public function seo(){
        $seo = DB::table('seo')->first();
        return view('admin.coupon.seo',compact('seo'));
    }
    public function updateSeo(Request $request){

        $id = $request->id;

        $data = array();
        $data['meta_title'] = $request->meta_title;
        $data['meta_author'] = $request->meta_author;
        $data['meta_tag'] = $request->meta_tag;
        $data['meta_description'] = $request->meta_description;
        $data['google_analytics'] = $request->google_analytics;
        $data['bing_analytics'] = $request->bing_analytics;
        DB::table('seo')->where('id',$id)->Update($data);
        $notification=array(
            'messege'=>'Seo Updated',
            'alert-type'=>'success'
        );
        return Redirect()->back()->with($notification);

    }
}

