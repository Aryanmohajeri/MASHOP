<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class UserTest extends TestCase
{
    /**@test
     *Testing a new product being added
     */
    public function test_a_new_product_being_added(){
        $this->actingAs(factory(Admin::class)->create());
        $response = $this->post('/createProduct',[
            'product_name' =>'Test product',
            'product_code' => '00000',
            'product_quantity' =>'10',
            'discount_price' =>'£10',
            'category_id' =>'1',
            'subcategory_id' =>'1',
            'brand_id' =>'1',
            'product_size' =>'1',
            'product_color' =>'red',
            'selling_price' =>'£100',
            'product_details' =>'Test product',
            'video_link' =>'test video',
            'main_slider' => 'Null',
            'hot_deal' =>'Null',
            'best_rated' =>'Null',
            'trend' =>'Null',
            'mid_slider' =>'Null',
            'hot_new' =>'Null',
            'buyone_getone' =>'Null',
            'raffle' =>'Null',
            'status' => 1
        ]);
        $this->assertCount(1, Product::all());
    }


}
