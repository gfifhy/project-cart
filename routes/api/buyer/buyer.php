<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:buyer']], function(){
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
    Route::get('/products/{slug}', [ProductController::class, 'show'])->name('show.products');
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.products');
    Route::get('/cart', [CartController::class, 'index'])->name('all.cart');
    Route::post('/cart', [CartController::class, 'store'])->name('store.cart');
    Route::put('/cart/{id}', [CartController::class, 'update'])->name('update.cart');
    Route::delete('/cart', [CartController::class, 'destroy'])->name('destroy.cart');
    Route::get('/orders', [OrderController::class, 'index'])->name('all.orders');
    Route::post('/orders', [OrderController::class, 'store'])->name('store.order');
});

