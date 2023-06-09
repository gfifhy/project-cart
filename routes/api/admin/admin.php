<?php

use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:admin']], function(){
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
    Route::put('/products', [ProductController::class, 'store'])->name('store.products');
    Route::get('/products/{slug}', [ProductController::class, 'show'])->name('show.products');
    Route::put('/products/{slug}', [ProductController::class, 'update'])->name('update.products');
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.categories');
    Route::get('/brands', [BrandController::class, 'index'])->name('all.brands');
});

