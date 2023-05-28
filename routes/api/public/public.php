<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;


Route::prefix('/products')->group(function() {
    Route::get('/', [ProductController::class, 'index'])->name('all.products');
    Route::get('/{slug}', [ProductController::class, 'show'])->name('show.products');
    Route::get('/categories', [CategoryController::class, 'index'])->name('all.categories');
    Route::get('/categories/{slug}', [CategoryController::class, 'show'])->name('product.categories');
});


Route::get('/test/{slug}', [CategoryController::class, 'test'])->name('all.categories');
