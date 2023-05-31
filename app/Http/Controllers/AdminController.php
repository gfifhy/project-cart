<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function getAllUser() {
        return User::with('role')->with('address')->get();
    }

    public function getAllOrders() {
        return Order::with('product')->orderBy('user_id')->get()->groupBy(function ($order) {
            $user = User::where('id',$order->user_id)->first();
            return $user->first_name. " " . $user->last_name;
        });
    }
}
