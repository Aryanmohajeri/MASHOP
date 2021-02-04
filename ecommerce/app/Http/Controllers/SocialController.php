<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator, Redirect, Response, File;
use Socialite;
use App\User;

class SocialController extends Controller
{
     public function redirect()
    {
        return Socialite::driver('google')->redirect();
    }
   
    public function callback()
    {
  $user = User::where('provider_id',$getInfo->id)->first();

  if (!$user){
  	$user = User::create([
  		'name' => $getInfo->name,
  		'email' => $getInfo->email,
		'provider' => $provider,
		'provider_id' => $getInfo->id,

  	]);
  }    
  return $user;  
}
}
