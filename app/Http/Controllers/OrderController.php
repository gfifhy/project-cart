<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Order::where('user_id', Auth::user()->id)->with('category')->with('brand')->get();
    }


    public function store(Request $request)
    {
        $fields = $request->validate([
            'cart_id' => 'required|string',
        ]);
        $cartIds = explode(",",$fields['cart_id']);
    }

    public function show(string $id)
    {
        //
    }

    public function update(Request $request, string $id)
    {

        $order = order::find($id);
        $order->update($request->all());
        return $order;
    }

    public function destroy(string $id)
    {
        //
    }
}
