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

    public function getAllOrders1() {
        return Order::with('product')->orderBy('user_id')->get()->groupBy(function ($order) {
            $user = User::where('id',$order->user_id)->first();
            return $user->first_name. " " . $user->last_name;
        });
    }
    public function getAllOrders()
    {
        return Order::with('product')->orderBy('created_at', 'desc')->with('user')->paginate(25);
    }

    public function changeStatusOrder(Request $request){
        $fields = $request->validate([
            'order_id' => 'required'
        ]);
        $orders = Order::whereIn('id',explode(',',$fields['order_id']))->get();
        for($i=0; $i<count($orders); $i++){
            $orders[$i]->update(['status'=> 'Shipping']);
        }
        return $orders;


    }
}
