<?php


Route::get('/', function () {
    return view('pages.index');
});
//auth & user
Auth::routes(['verify' => true]);
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/password/change', 'HomeController@changePassword')->name('password.change');
Route::get('/email/change', 'HomeController@emailPassword')->name('email.change');
Route::post('/password/update', 'HomeController@updatePassword')->name('password.update');
Route::post('/email/update', 'HomeController@updateEmail')->name('email.update');
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
Route::get('/admin/Change/Password', 'AdminController@ChangePassword')->name('admin.password.change');
Route::post('/admin/password/update', 'AdminController@Update_pass')->name('admin.password.update');
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
Route::get('admin/newsletter', 'Admin\NewsletterController@newsLetter')->name('admin.newsletter');
Route::get('delete/sub/{id}', 'Admin\NewsletterController@deleteSub');

//All Product Routes:
Route::get('admin/product/all', 'Admin\ProductController@index')->name('all.product');
Route::get('admin/product/add', 'Admin\ProductController@createProduct')->name('add.product');
Route::post('admin/store/product', 'Admin\ProductController@storeProduct')->name('store.product');


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


// Admin Order Route

Route::get('admin/pading/order', 'Admin\OrderController@newOrder')->name('admin.neworder');
Route::get('admin/view/order/{id}', 'Admin\OrderController@viewOrder');

Route::get('admin/payment/accept/{id}', 'Admin\OrderController@paymentAccept');
Route::get('admin/payment/cancel/{id}', 'Admin\OrderController@paymentCancel');

Route::get('admin/accept/payment', 'Admin\OrderController@Acceptpayment')->name('admin.accept.payment');

Route::get('admin/cancel/order', 'Admin\OrderController@Cancelorder')->name('admin.cancel.order');

Route::get('admin/process/payment', 'Admin\OrderController@processPayment')->name('admin.process.payment');
Route::get('admin/success/payment', 'Admin\OrderController@successPayment')->name('admin.success.payment');

Route::get('admin/delivery/process/{id}', 'Admin\OrderController@deliveryProcess');
Route::get('admin/delivery/done/{id}', 'Admin\OrderController@deliveryDone');


// SEO Setting Route
Route::get('admin/seo', 'Admin\SettingController@seo')->name('admin.seo');
Route::post('admin/seo/update', 'Admin\SettingController@updateSeo')->name('update.seo');


//Frontend Routes
Route::post('store/newsletter', 'NewsletterController@storenewsletter')->name('store.newsletter');


//Wishlist
Route::get('add/wishlist/{id}', 'WishlistController@addWishlist');
Route::get('user/wishlist/', 'WishlistController@productWishlist')->name('user.wishlist');

//Cart
Route::get('add/to/cart/{id}', 'CartController@addCart');
Route::get('check', 'CartController@check');
Route::get('product/cart', 'CartController@showCart')->name('show.cart');
Route::post('update/cart/item/', 'CartController@UpdateCart')->name('update.cartitem');
Route::post('insert/into/cart/', 'CartController@insertCart')->name('insert.into.cart');
Route::get('remove/cart/{rowId}', 'CartController@removeCart');
Route::get('/product/details/{id}/{product_name}', 'ProductController@productView');
Route::post('cart/product/add/{id}', 'ProductController@addCart');

Route::get('/cart/product/view/{id}', 'CartController@viewProduct');

//CheckOut
Route::get('user/checkout/', 'CartController@productCheckout')->name('user.checkout');


//Promo Codes
Route::post('user/apply/coupon/', 'CartController@Coupon')->name('apply.coupon');
Route::get('coupon/remove/', 'CartController@couponRemove')->name('coupon.remove');

//Blog Post Routes
Route::get('blog/post/', 'BlogController@blogPost')->name('blog.post');
Route::get('language/english', 'BlogController@englishLanguage')->name('language.english');
Route::get('language/spanish', 'BlogController@spanishLanguage')->name('language.spanish');
Route::get('blog/single/{id}', 'BlogController@blogSingle');

// Payment Step
Route::get('payment/page', 'CartController@paymentPage')->name('payment.step');
Route::post('user/payment/process/', 'PaymentController@paymentProcess')->name('payment.process');

// Product details Page
Route::get('products/{id}', 'FilterViewController@subcategoryView');
Route::get('all_category/{id}', 'FilterViewController@categoryView');
Route::get('subcategories/{id}', 'FilterViewController@subcategoryView');
Route::post('user/raffle/charge/', 'PaymentController@raffles')->name('raffle.process');
Route::post('user/stripe/charge/', 'PaymentController@stripeCharge')->name('stripe.payment');


// Order Tracking Route
Route::post('order/tracking', 'TrackingController@orderTracking')->name('order.tracking');
Route::get('order/tracking', 'TrackingController@viewOrder')->name('order.tracking');

// Order Report Routes

Route::get('admin/today/order', 'Admin\ReportController@todayOrder')->name('today.order');
Route::get('admin/today/delivery', 'Admin\ReportController@todayDelivery')->name('today.delivery');

Route::get('admin/this/month', 'Admin\ReportController@thisMonth')->name('this.month');
Route::get('admin/search/report', 'Admin\ReportController@search')->name('search.report');

Route::post('admin/search/by/year', 'Admin\ReportController@searchByYear')->name('search.by.year');
Route::post('admin/search/by/month', 'Admin\ReportController@searchByMonth')->name('search.by.month');

Route::post('admin/search/by/date', 'Admin\ReportController@searchByDate')->name('search.by.date');

// Admin Role Routes

Route::get('admin/all/user', 'Admin\UserRoleController@userRole')->name('admin.all.user');

Route::get('admin/create/admin', 'Admin\UserRoleController@userCreate')->name('create.admin');

Route::post('admin/store/admin', 'Admin\UserRoleController@userStore')->name('store.admin');

Route::get('delete/admin/{id}', 'Admin\UserRoleController@userDelete');
Route::get('edit/admin/{id}', 'Admin\UserRoleController@userEdit');

Route::post('admin/update/admin', 'Admin\UserRoleController@userUpdate')->name('update.admin');

// Admin Site Setting Route
Route::get('admin/site/setting', 'Admin\SettingController@siteSetting')->name('admin.site.setting');

Route::post('admin/sitesetting', 'Admin\SettingController@updateSiteSetting')->name('update.sitesetting');

// Return Order Route

Route::get('success/list/', 'PaymentController@successList')->name('success.orderlist');

Route::get('request/return/{id}', 'PaymentController@requestReturn');

Route::get('admin/return/request/', 'Admin\ReturnController@returnRequest')->name('admin.return.request');

Route::get('admin/approve/return/{id}', 'Admin\ReturnController@approveReturn');
Route::get('admin/all/return/', 'Admin\ReturnController@allReturn')->name('admin.all.return');

// Order Stock Route
Route::get('admin/product/stock', 'Admin\UserRoleController@productStock')->name('admin.product.stock');

/// Contact page Routes

Route::get('contact/page', 'ContactController@Contact')->name('contact.page');
Route::post('contact/form', 'ContactController@contactForm')->name('contact.form');

Route::get('admin/message', 'ContactController@allMessage')->name('all.message');

// Search Route
Route::post('product/search', 'SearchController@productSearch')->name('product.search');

//google

Route::get('auth/redirect/{provider}', 'SocialController@redirect');
Route::get('/callback/{provider}', 'SocialController@callback');

//Raffle
Route::get('view/raffle/entries/{id}', 'Admin\RaffleController@viewRaffle');
Route::get('accept/raffle/{id}', 'Admin\RaffleController@acceptRaffle');
Route::get('reject/raffle/{id}', 'Admin\RaffleController@deleteRaffle');
Route::get('acceptRandom/raffle', 'Admin\RaffleController@randomRaffle')->name('random.raffle');
//Admin Raffle Route
Route::get('admin/raffles', 'Admin\OrderController@processPayment')->name('admin.process.payment');
Route::get('admin/raffle/all', 'Admin\RaffleController@index')->name('all.product.raffle');
