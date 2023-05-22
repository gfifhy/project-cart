<?php

use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

//rate limit
Route::group(['middleware' => ['throttle:loginThrottle']], function(){
    Route::post('/login', [AuthController::class,'login'])->name('auth.studentLogin');
    Route::post('/register', [AuthController::class,'register'])->name('auth.register');
    Route::post('/admin/login', [AuthController::class,'adminLogin'])->name('auth.adminLogin');
});

Route::group(['middleware' => ['auth:sanctum']], function(){
    Route::post('/logout', [AuthController::class, 'logout'])->name('auth.logout');
    Route::get('/profile', [AuthController::class, 'profile'])->name('auth.profile');
});

