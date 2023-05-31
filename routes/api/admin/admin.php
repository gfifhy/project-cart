<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:admin']], function(){
    //users
    Route::get('/users', [AdminController::class, 'getAllUser'])->name('all.users');

    //products
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
    Route::post('/products', [ProductController::class, 'store'])->name('store.products');
    Route::get('/products/{slug}', [ProductController::class, 'show'])->name('show.products');
    Route::put('/products/{slug}', [ProductController::class, 'update'])->name('update.products');

    //categories
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.categories');
    Route::post('/categories', [CategoryController::class, 'store'])->name('store.categories');
    Route::put('/categories', [CategoryController::class, 'update'])->name('update.categories');
    Route::post('/categories/{id}', [CategoryController::class, 'destroy'])->name('destroy.categories');

    //brands
    Route::get('/brands', [BrandController::class, 'index'])->name('all.brands');
    Route::post('/brands', [BrandController::class, 'store'])->name('store.brands');
    Route::put('/brands', [BrandController::class, 'update'])->name('update.brands');
    Route::post('/brands/{id}', [BrandController::class, 'destroy'])->name('destroy.brands');

    //orders
    Route::get('/orders', [AdminController::class, 'getAllOrders'])->name('all.orders');
});

