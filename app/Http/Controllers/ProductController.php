<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductImage;
use App\Traits\ExceptionTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    use ExceptionTrait;

    public function index(Request $request)
    {
        $query = Product::whereNull('deleted_at')->where('stock','>','0')->with('images')->with('brand')->with('category');
        if($request->input('orderBy') !== null){
            $order = explode(',', $request->input('orderBy'));
            if(count($order) < 2) {
                return $this->throwException('invalid query', 402);
            }
            $order[0] = $order[0] === 'date' ? 'created_at' : $order[0];
            if ($order[1] === 'asc') {
                $query->orderBy($order[0], 'asc');
            }
            elseif ($order[1] === 'desc') {
                $query->orderBy($order[0], 'desc');
            }
        }

        //brand
        if($request->input('brand') !== null) {
            $brand = Brand::whereIn('slug', explode(',', $request->input('brand')))->pluck('id');
            if(count($brand) > 0){
                $query->whereIn('brand_id', $brand);
            }
        }
        //minprice
        if($request->input('minPrice') !== null) {
            $query->where('price', '>=', $request->input('minPrice'));
        }

        //maxPrice
        if($request->input('maxPrice') !== null) {
            $query->where('price', '<=', $request->input('maxPrice'));
        }
        $products = $query->paginate(25);
        return $products;
        //return Product::whereNull('deleted_at')->where('stock','>','1')->paginate(25);
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string|unique:products,name',
            'price' => 'required|string',
            'stock' => 'required|string',
            'attributes' => '',
            'category_id' => 'required|string',
            'brand_id' => 'required|string',
            'image_links' => 'required|string',
        ]);

        $product = Product::create([
            'name' => $fields['name'],
            'slug' => Str::slug($fields['name']),
            'price' => $fields['price'],
            'stock' => $fields['stock'],
            'attributes' => $fields['attributes'],
            'category_id' => $fields['category_id'],
            'brand_id' => $fields['brand_id'],
        ]);

        $imageLinks = explode(',',$fields['image_links']);
        for($i=0; $i<count($imageLinks);$i++){
            ProductImage::create([
                'product_id' => $product->id,
                'image_link' => $imageLinks[$i],
            ]);
        }
        $product->images = $imageLinks;

        return $product;

    }

    public function show(string $slug)
    {
        $product = Product::where("slug",$slug)->with('images')->with('brand')->with('category')->first();
        return response($product, 200);
    }

    public function update(Request $request, $slug)
    {
        $fields = $request->validate(['images' => 'required']);
        $product = Product::where('slug', $slug)->with('images')->first();
        $product->update($request->except('images'));
        if (isset($request['images'])) {
            ProductImage::destroy($product->images->pluck('id'));
            $images = explode(',',$request->images);
            $productImages = [];
            for($i=0; $i<count($images);$i++){
                $productImages[] = ProductImage::create(['image_link' => $images[$i], 'product_id' => $product->id]);
            }
            $product->images = $productImages;
        }
        return $product;
    }

    public function destroy(string $slug)
    {
        $product = Product::where('slug', $slug)->with('images')->first();
        $images = ProductImage::destroy($product->images->pluck('id'));
        $product->delete();
        return response(['product' => $product, 'images' => $images], 200);


    }
    public function search(Request $request)
    {
        if(isset($request->client_name)){
            return Product::where('name', 'LIKE', '%'.$request->product_name.'%')->get();
        }
        return "";
    }
}
