<?php



Route::get('/', function () {return view('pages.index');});
//auth & user
Auth::routes(['verify' => true]);
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/password/change', 'HomeController@changePassword')->name('password.change');
Route::post('/password/update', 'HomeController@updatePassword')->name('password.update');
Route::get('/user/logout', 'HomeController@Logout')->name('user.logout');

//admin=======
Route::get('admin/home', 'AdminController@index')->name('admin.home');
Route::get('admin', 'Admin\LoginController@showLoginForm')->name('admin.login');
Route::post('admin', 'Admin\LoginController@login');


Route::get('admin/logout', 'Admin\LoginController@Logout')->name('admin.logout');

        // Password Reset Routes...
Route::get('admin/password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::post('admin-password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::get('admin/reset/password/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');
Route::post('admin/update/reset', 'Admin\ResetPasswordController@reset')->name('admin.reset.update');
Route::get('/admin/Change/Password','AdminController@ChangePassword')->name('admin.password.change');
Route::post('/admin/password/update','AdminController@Update_pass')->name('admin.password.update');
Route::get('admin/logout', 'AdminController@logout')->name('admin.logout');



// Admin section
//Categories
Route::get('admin/categories', 'Admin\Category\CategoryController@category')->name('categories');
Route::post('admin/store/category', 'Admin\Category\CategoryController@storecategory')->name('store.category');
Route::get('delete/category/{id}', 'Admin\Category\CategoryController@deletecategory')->name('delete.category');
Route::get('edit/category/{id}', 'Admin\Category\CategoryController@editcategory')->name('edit.category');
Route::post('update/category/{id}', 'Admin\Category\CategoryController@updatecategory')->name('update.category');


//Brands
Route::get('admin/brands', 'Admin\Category\BrandController@brand')->name('brands');
Route::post('admin/store/brands', 'Admin\Category\BrandController@storebrand')->name('store.brand');
Route::get('delete/brand/{id}', 'Admin\Category\BrandController@deletebrand')->name('delete.brand');
Route::get('edit/brand/{id}', 'Admin\Category\BrandController@editbrand')->name('edit.brand');
Route::post('update/brand/{id}', 'Admin\Category\BrandController@updatebrand')->name('update.brand');


// Sub Categories
Route::get('admin/sub/category', 'Admin\Category\SubCategoryController@subcategories')->name('sub.categories');
Route::post('admin/store/subcat', 'Admin\Category\SubCategoryController@storesubcat')->name('store.subcategory');
Route::get('delete/subcategory/{id}', 'Admin\Category\SubCategoryController@deleteSubcat');
Route::get('edit/subcategory/{id}', 'Admin\Category\SubCategoryController@editSubcat');
Route::post('update/subcategory/{id}', 'Admin\Category\SubCategoryController@updateSubcat');

//To show all subcategory with ajax
Route::get('/get/subcategory/{category_id}', 'Admin\ProductController@getSubcat');

//All Coupons
Route::get('admin/sub/coupon', 'Admin\Category\CouponController@coupon')->name('admin.coupon');
Route::post('admin/store/coupon', 'Admin\Category\CouponController@storeCoupon')->name('store.coupon');
Route::get('delete/coupon/{id}', 'Admin\Category\CouponController@deleteCoupon');
Route::get('edit/coupon/{id}', 'Admin\Category\CouponController@editCoupon');
Route::post('update/coupon/{id}', 'Admin\Category\CouponController@updateCoupon');

//Newsletters
Route::get('admin/newsletter', 'Admin\Category\CouponController@newsLetter')->name('admin.newsletter');
Route::get('delete/sub/{id}', 'Admin\Category\CouponController@deleteSub');

//All Product Routes:
Route::get('admin/product/all', 'Admin\ProductController@index')->name('all.product');
Route::get('admin/product/add', 'Admin\ProductController@createProduct')->name('add.product');
Route::post('admin/store/product', 'Admin\ProductController@storeProduct')->name('store.product');

//Active / Inactive product
Route::get('inactive/product/{id}', 'Admin\ProductController@inactive');
Route::get('active/product/{id}', 'Admin\ProductController@active');
//Delete product
Route::get('delete/product/{id}', 'Admin\ProductController@deleteProduct');
//View Product
Route::get('view/product/{id}', 'Admin\ProductController@viewProduct')->name('view.product');
//Edit product
Route::get('edit/product/{id}', 'Admin\ProductController@editProduct')->name('edit.product');
//Update Product
Route::post('update/product/withoutphoto/{id}', 'Admin\ProductController@updateProductWithoutPhoto');
Route::post('update/product/photo/{id}', 'Admin\ProductController@updateProductPhoto');



//Blog Admin
Route::get('blog/category/list', 'Admin\PostController@blogCatlist')->name('add.blog.categorylist');
Route::post('admin/store/blog', 'Admin\PostController@blogCatstore')->name('store.blog.category');
Route::get('delete/blogcategory/{id}', 'Admin\PostController@deleteBlogcat');
Route::get('edit/blogcategory/{id}', 'Admin\PostController@editBlogcat');
Route::post('update/blog/category/{id}', 'Admin\PostController@updateBlogcat');


Route::get('admin/add/post', 'Admin\PostController@create')->name('add.blog.post');
Route::get('admin/all/post', 'Admin\PostController@index')->name('all.blog.post');
Route::post('admin/store/post', 'Admin\PostController@store')->name('store.post');
Route::get('delete/post/{id}', 'Admin\PostController@deletePost');
Route::get('edit/post/{id}', 'Admin\PostController@editPost');
Route::post('update/post/{id}', 'Admin\PostController@updatePost');


//Frontend Routes
Route::post('store/newsletter', 'FrontController@storenewsletter')->name('store.newsletter');


//Wishlist
Route::get('add/wishlist/{id}', 'WishlistController@addWishlist');

//Cart
Route::get('add/to/cart/{id}', 'CartController@addCart');
Route::get('check', 'CartController@check');
Route::get('product/cart', 'CartController@showCart')->name('show.cart');
Route::post('update/cart/item/', 'CartController@UpdateCart')->name('update.cartitem');
Route::post('insert/into/cart/', 'CartController@insertCart')->name('insert.into.cart');
Route::get('remove/cart/{rowId}', 'CartController@removeCart');
Route::get('/product/details/{id}/{product_name}', 'ProductController@productView');
Route::post('cart/product/add/{id}', 'ProductController@addCart');

Route::get('/cart/product/view/{id}','CartController@viewProduct');

//CheckOut
Route::get('user/checkout/','CartController@productCheckout')->name('user.checkout');

//Wishlist
Route::get('user/wishlist/','CartController@productWishlist')->name('user.wishlist');

//Promo Codes
Route::post('user/apply/coupon/','CartController@Coupon')->name('apply.coupon');
Route::get('coupon/remove/', 'CartController@couponRemove')->name('coupon.remove');

//Blog Post Routes
Route::get('blog/post/','BlogController@blogPost')->name('blog.post');
Route::get('language/english','BlogController@englishLanguage')->name('language.english');
Route::get('language/spanish','BlogController@spanishLanguage')->name('language.spanish');
Route::get('blog/single/{id}','BlogController@blogSingle');


