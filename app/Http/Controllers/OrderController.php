<?php

namespace App\Http\Controllers;

use App\Models\Cart;
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
        return Order::where('user_id', Auth::user()->id)->with('product')->orderBy('created_at', 'desc')->paginate(25);
        /*return Order::where('user_id', Auth::user()->id)->with('product')->orderBy('created_at')->get()->gr   oupBy(function ($order) {
            return $order->created_at->format('Y-m-d');
        });*/
    }


    public function store(Request $request)
    {
        $fields = $request->validate([
            'cart_id' => 'required|string',
        ]);
        $orders = array();
        $carts = Cart::whereIn('id', explode(",",$fields['cart_id']))->get();
        for($i=0; $i<count($carts); $i++){
            $order = Order::create([
                'quantity' => $carts[$i]->quantity,
                'product_id' => $carts[$i]->product_id,
                'user_id' => Auth::user()->id,
                'status' => 'Confirming',
            ]);
            $orders[] = $order;
            Cart::destroy($carts[$i]->id);
        }
        return $orders;
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
