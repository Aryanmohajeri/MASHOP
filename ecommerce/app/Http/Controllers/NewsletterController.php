<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsletterController extends Controller
{
    public function storenewsletter(Request $request)
    {
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

}
