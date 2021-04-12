<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class UserTest extends TestCase
{
    use RefreshDatabase;
    /**@test
     *Testing whether a guest user gets redirected into login page after trying to checkout or not
     */
    public function test_user_login_redirect_checkout(){
        $response = $this->get('/user/checkout')->assertRedirect('/login');
    }

    /**@test
     *Testing if user is logged in they can see the checkout page
     */
    public function test_authenticatedUser_checkout(){
        //login as a fake customer
        $this->actingAs(factory(User::class)->create());
        //since we are logged in the status should be ok
        $response = $this->get('/user/checkout')->assertOk();
    }

    /**@test
     *Testing user account updating
     */
    public function test_useremail_updating(){
        $user = factory(User::class)->create();
        $this->actingAs($user);
        $user_updated = [
            'name'=>$user->name,
            'email'=>'test@test.com',
            'password'=>$user->password
        ];
        $user->update($user_updated);

        $response = $this->assertEquals($user, $user_updated);

    }

}
