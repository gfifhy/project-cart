<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Traits\ExceptionTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CategoryController extends Controller
{

    use ExceptionTrait;

    public function index()
    {
        return Category::with('descendants')->get();
    }
    public function store(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string'
        ]);
        $brand = Category::create([
            'name' => $fields['name'],
            'slug' => Str::slug($fields['name']),
        ]);

        return response($brand,201);
    }

    public function show(string $slug)
    {
        $id = Category::where('slug', $slug)->pluck('id')[0];
        $ids = (isset($id)) ? $this->getAllDescendantsId(Category::find($id)): $this->throwException("Invalid Category", 402);
        return Product::whereIn('category_id', $ids)->with('category')->with('brand')->with('images')->paginate(25);
    }

    public function update(Request $request, string $id)
    {
        $category = Category::find($id);
        $category->update($request->all());
        return $category;
    }

    public function destroy(string $id)
    {
        return Category::destroy($id);
    }

    public function getAllDescendants(Category $category)
    {
        $descendants = [];
        foreach ($category->children as $child) {
            $descendants[] = $child;
            $descendants = array_merge($descendants, $this->getAllDescendants($child));
        }
        return $descendants;
    }
    public function getAllDescendantsId(Category $category) {
        $descendants = $this->getAllDescendants($category);
        $id = array();
        array_push($id, $category->id);
        foreach ($descendants as $descendant) {
            array_push($id, $descendant->id);
        }
        return $id;
    }

    public function test(string $slug, Request $request) {
        $id = Category::where('slug', $slug)->pluck('id')[0];
        if ($id) {
            $ids = $this->getAllDescendantsId(Category::find($id));
            $query = Product::whereIn('category_id', $ids)->with('images');


            //orderBy
            if($request->integer('orderBy') !== null){
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
        }

        $this->throwException("Invalid Category", 402);
    }
}
