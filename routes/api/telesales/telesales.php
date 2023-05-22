<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:telesales']], function(){
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.products');
});

