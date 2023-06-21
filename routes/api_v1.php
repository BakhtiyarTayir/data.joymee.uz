<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function () {

    Route::post('login', [\App\Http\Controllers\AuthController::class, 'login']);
    Route::post('logout', [\App\Http\Controllers\AuthController::class, 'logout']);
    Route::post('refresh', [\App\Http\Controllers\AuthController::class, 'refresh']);
    Route::post('me', [\App\Http\Controllers\AuthController::class, 'me']);

});

Route::group([
//    'middleware' => 'api',
//    'prefix'=> 'api/v1'

], function () {

    // Получение списка категорий объявлений
    Route::get('/ad_categories', [\App\Http\Controllers\Api\V1\CategoryBoardController::class, 'index']);
    // Получение конкретной категории объявления по идентификатору
    Route::get('/ad_categories/{id}', [\App\Http\Controllers\Api\V1\CategoryBoardController::class, 'show']);
    Route::get('/ads_cat', [\App\Http\Controllers\Api\V1\CategoryBoardController::class, 'ads']);
    Route::get('/categories/{category}/ads', [\App\Http\Controllers\Api\V1\AdController::class, 'getAdsByCategory']);
});



Route::resource('ads', \App\Http\Controllers\Api\V1\UniAdController::class);



