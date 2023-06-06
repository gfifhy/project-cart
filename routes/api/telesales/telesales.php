<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:telesales']], function(){
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.products');
    Route::get('/products/{slug}', [ProductController::class, 'show'])->name('show.products');
    Route::get('/orders/', [AdminController::class, 'getAllOrders'])->name('all.orders');
    Route::get('/orders/{id}', [ProductController::class, 'show'])->name('show.products');
    Route::post('/orders', [AdminController::class, 'changeStatusOrder'])->name('change.status');

});

