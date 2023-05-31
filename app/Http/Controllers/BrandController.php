<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BrandController extends Controller
{
    public function index()
    {
        return Brand::all();
    }

    public function store(Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string'
        ]);
        $brand = Brand::create([
            'name' => $fields['name'],
            'slug' => Str::slug($fields['name']),
        ]);

        return response($brand,201);
    }

    public function update(Request $request, string $id)
    {
        $brand = Brand::find($id);
        $brand->update($request->all());
        return $brand;
    }

    public function destroy(string $id)
    {
       return Brand::destroy($id);
    }
}
