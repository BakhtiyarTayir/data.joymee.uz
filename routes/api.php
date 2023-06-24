<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::resource('uni-ads', App\Http\Controllers\API\UniAdAPIController::class)
    ->except(['create', 'edit']);

Route::resource('uni-category-boards', App\Http\Controllers\API\UniCategoryBoardAPIController::class)
    ->except(['create', 'edit']);
