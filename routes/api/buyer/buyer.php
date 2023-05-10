<?php

use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['role:admin']], function(){
    Route::get('/products', [ProductController::class, 'index'])->name('all.products');
});
