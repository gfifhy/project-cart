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
        return Order::where('user_id', Auth::user()->id)->get();
    }


    public function store(Request $request)
    {
        $fields = $request->validate([
            'product_id' => 'required|string',
            'quantity' => 'required|string',
        ]);
            $order = Order::create([
                'product_id' => $fields['product_id'],
                'user_id' => Auth::user()->id,
                'quantity' => $fields['quantity'],
                'status' => "Confirming",
            ]);
        $product = Product::find($fields['product_id']);
        $product->stock = $product->stock - $fields['quantity'];
        $product->save();

        return response(["order" => $order, "product" => $product], 201);
    }

    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
