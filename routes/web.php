<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('/category', [\App\Http\Controllers\Api\V1\AdController::class, 'getAdsByCategory'])->name('category');



Route::group(['namespace'=> 'Admin', 'prefix' => 'admin', 'middleware' => ['auth', 'admin']], function() {

    Route::get('/', [App\Http\Controllers\Admin\IndexController::class, '__invoke'])->name('admin.main.index');



    Route::group(['namespace' => 'Ads', 'prefix'=>'ads'], function() {
        Route::get('/', [App\Http\Controllers\Admin\UniAd\IndexController::class, '__invoke'])->name('admin.ads.index');
        Route::get('/create', [App\Http\Controllers\Admin\UniAd\CreateController::class, '__invoke'])->name('admin.ads.create');
        Route::post('/', [App\Http\Controllers\Admin\UniAd\StoreController::class, '__invoke'])->name('admin.ads.store');
        Route::get('/{ads}', [App\Http\Controllers\Admin\UniAd\ShowController::class, '__invoke'])->name('admin.ads.show');
        Route::get('/{ads}/edit', [App\Http\Controllers\Admin\UniAd\EditController::class, '__invoke'])->name('admin.ads.edit');
        Route::patch('/{ads}', [App\Http\Controllers\Admin\UniAd\UpdateController::class, '__invoke'])->name('admin.ads.update');
        Route::delete('/{ads}', [App\Http\Controllers\Admin\UniAd\DeleteController::class, '__invoke'])->name('admin.ads.delete');
    });

    Route::group(['namespace' => 'Post', 'prefix'=>'posts'], function() {
        Route::get('/', [App\Http\Controllers\Admin\Post\IndexController::class, '__invoke'])->name('admin.post.index');
        Route::get('/create', [App\Http\Controllers\Admin\Post\CreateController::class, '__invoke'])->name('admin.post.create');
        Route::post('/', [App\Http\Controllers\Admin\Post\StoreController::class, '__invoke'])->name('admin.post.store');
        Route::get('/{post}', [App\Http\Controllers\Admin\Post\ShowController::class, '__invoke'])->name('admin.post.show');
        Route::get('/{post}/edit', [App\Http\Controllers\Admin\Post\EditController::class, '__invoke'])->name('admin.post.edit');
        Route::patch('/{post}', [App\Http\Controllers\Admin\Post\UpdateController::class, '__invoke'])->name('admin.post.update');
        Route::delete('/{post}', [App\Http\Controllers\Admin\Post\DeleteController::class, '__invoke'])->name('admin.post.delete');
    });


    Route::group(['namespace' => 'Category', 'prefix'=>'categories'], function() {
        Route::get('/', [App\Http\Controllers\Admin\Category\IndexController::class, '__invoke'])->name('admin.category.index');
        Route::get('/create', [App\Http\Controllers\Admin\Category\CreateController::class, '__invoke'])->name('admin.category.create');
        Route::post('/', [App\Http\Controllers\Admin\Category\StoreController::class, '__invoke'])->name('admin.category.store');
        Route::get('/{category}', [App\Http\Controllers\Admin\Category\ShowController::class, '__invoke'])->name('admin.category.show');
        Route::get('/{category}/edit', [App\Http\Controllers\Admin\Category\EditController::class, '__invoke'])->name('admin.category.edit');
        Route::patch('/{category}', [App\Http\Controllers\Admin\Category\UpdateController::class, '__invoke'])->name('admin.category.update');
        Route::delete('/{category}', [App\Http\Controllers\Admin\Category\DeleteController::class, '__invoke'])->name('admin.category.delete');
    });

    Route::group(['namespace' => 'Tag', 'prefix'=>'tags'], function() {
        Route::get('/', [App\Http\Controllers\Admin\Tag\IndexController::class, '__invoke'])->name('admin.tag.index');
        Route::get('/create', [App\Http\Controllers\Admin\Tag\CreateController::class, '__invoke'])->name('admin.tag.create');
        Route::post('/', [App\Http\Controllers\Admin\Tag\StoreController::class, '__invoke'])->name('admin.tag.store');
        Route::get('/{tag}', [App\Http\Controllers\Admin\Tag\ShowController::class, '__invoke'])->name('admin.tag.show');
        Route::get('/{tag}/edit', [App\Http\Controllers\Admin\Tag\EditController::class, '__invoke'])->name('admin.tag.edit');
        Route::patch('/{tag}', [App\Http\Controllers\Admin\Tag\UpdateController::class, '__invoke'])->name('admin.tag.update');
        Route::delete('/{tag}', [App\Http\Controllers\Admin\Tag\DeleteController::class, '__invoke'])->name('admin.tag.delete');
    });

    Route::group(['namespace' => 'User', 'prefix'=>'users'], function() {
        Route::get('/', [App\Http\Controllers\Admin\User\IndexController::class, '__invoke'])->name('admin.user.index');
        Route::get('/create', [App\Http\Controllers\Admin\User\CreateController::class, '__invoke'])->name('admin.user.create');
        Route::post('/', [App\Http\Controllers\Admin\User\StoreController::class, '__invoke'])->name('admin.user.store');
        Route::get('/{user}', [App\Http\Controllers\Admin\User\ShowController::class, '__invoke'])->name('admin.user.show');
        Route::get('/{user}/edit', [App\Http\Controllers\Admin\User\EditController::class, '__invoke'])->name('admin.user.edit');
        Route::patch('/{user}', [App\Http\Controllers\Admin\User\UpdateController::class, '__invoke'])->name('admin.user.update');
        Route::delete('/{user}', [App\Http\Controllers\Admin\User\DeleteController::class, '__invoke'])->name('admin.user.delete');
    });

    Route::group(['namespace' => 'Country', 'prefix' => 'countries'], function (){
        Route::get('/', [App\Http\Controllers\Admin\Country\IndexController::class, '__invoke'])->name('admin.country.index');
        Route::get('/create', [App\Http\Controllers\Admin\Country\CreateController::class, '__invoke'])->name('admin.country.create');
        Route::post('/', [App\Http\Controllers\Admin\Country\StoreController::class, '__invoke'])->name('admin.country.store');
        Route::get('/{country}', [App\Http\Controllers\Admin\Country\ShowController::class, '__invoke'])->name('admin.country.show');
        Route::get('/{country}/edit', [App\Http\Controllers\Admin\Country\EditController::class, '__invoke'])->name('admin.country.edit');
        Route::patch('/{country}', [App\Http\Controllers\Admin\Country\UpdateController::class, '__invoke'])->name('admin.country.update');
        Route::delete('/{country}', [App\Http\Controllers\Admin\Country\DeleteController::class, '__invoke'])->name('admin.country.delete');
    });

    Route::group(['namespace' => 'Region', 'prefix' => 'regions'], function (){
        Route::get('/', [App\Http\Controllers\Admin\Region\IndexController::class, '__invoke'])->name('admin.region.index');
        Route::get('/create', [App\Http\Controllers\Admin\Region\CreateController::class, '__invoke'])->name('admin.region.create');
        Route::post('/', [App\Http\Controllers\Admin\Region\StoreController::class, '__invoke'])->name('admin.region.store');
        Route::get('/{region}', [App\Http\Controllers\Admin\Region\ShowController::class, '__invoke'])->name('admin.region.show');
        Route::get('/{region}/edit', [App\Http\Controllers\Admin\Region\EditController::class, '__invoke'])->name('admin.region.edit');
        Route::patch('/{region}', [App\Http\Controllers\Admin\Region\UpdateController::class, '__invoke'])->name('admin.region.update');
        Route::delete('/{region}', [App\Http\Controllers\Admin\Region\DeleteController::class, '__invoke'])->name('admin.region.delete');
    });


    Route::group(['namespace' => 'City', 'prefix' => 'cities'], function (){
        Route::get('/', [App\Http\Controllers\Admin\City\IndexController::class, '__invoke'])->name('admin.city.index');
        Route::get('/create', [App\Http\Controllers\Admin\City\CreateController::class, '__invoke'])->name('admin.city.create');
        Route::post('/', [App\Http\Controllers\Admin\City\StoreController::class, '__invoke'])->name('admin.city.store');
        Route::get('/{city}', [App\Http\Controllers\Admin\City\ShowController::class, '__invoke'])->name('admin.city.show');
        Route::get('/{city}/edit', [App\Http\Controllers\Admin\City\EditController::class, '__invoke'])->name('admin.city.edit');
        Route::patch('/{city}', [App\Http\Controllers\Admin\City\UpdateController::class, '__invoke'])->name('admin.city.update');
        Route::delete('/{city}', [App\Http\Controllers\Admin\City\DeleteController::class, '__invoke'])->name('admin.city.delete');
    });
});
