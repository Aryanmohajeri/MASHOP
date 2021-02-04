<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ContactController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }


    public function allMessage()
    {
        $message = DB::table('contact')->get();
        return view('admin.contact.all_message', compact('message'));
    }
}
