<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use App\Traits\ExceptionTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{

    use ExceptionTrait;
    public function index()
    {
        return Cart::where('user_id', Auth::user()->id)->get();
    }
    public function update(Request $request, string $id)
    {
        $fields = $request->validate(['quantity' => 'required|string']);
        $cart = Cart::where('id', $id)->where('user_id',Auth::user()->id)->first();
        if($cart) {
            $cart->quantity = $fields['quantity'];
            $cart->save();
            return $cart;
        }
        return $this->throwException("Product in cart not found", 402);
    }

    public function destroy(string $id)
    {
        $cart = Cart::where('user_id', Auth::user()->id)->where('id',$id)->first();
        if($cart){
            $cart->delete();
            return response("Cart Deleted", 200);
        }
        return response("Unsuccessful", 401);

    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'product_id' => 'required|string',
            'quantity' => 'required|string',
        ]);
        $cart = cart::where('product_id', $fields['product_id'])->where('user_id', Auth::user()->id)->first();
        if($cart){
            $cart->quantity  += $fields['quantity'];
            $cart->save();

        } else {
            $cart = cart::create([
                'product_id' => $fields['product_id'],
                'user_id' => Auth::user()->id,
                'quantity' => $fields['quantity'],
                'status' => "Confirming",
            ]);
        }
        $product = Product::find($fields['product_id']);
        $product->stock = $product->stock - $fields['quantity'];
        $product->save();

        return response(["order" => $cart, "product" => $product], 201);
    }
}
