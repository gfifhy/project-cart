<?php

namespace Database\Seeders;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = Category::all();
        $brands = Brand::all();

        for ($i = 0; $i < 50; $i++) {
            $product = new Product();
            $product->id = Str::uuid();
            $product->name = "Cosmetics Product " . ($i+1);
            $product->slug = "cosmetics-product-" . ($i+1);
            $product->price = rand(10, 100);
            $product->stock = rand(1, 100);
            $product->category_id = $categories->random()->id;
            $product->brand_id = $brands->random()->id;
            $product->attributes = json_encode([
                "weight" => rand(1, 100) . "g",
                "color" => "Random Color",
                "size" => rand(1, 10) . "cm",
            ]);
            $product->save();
        }
    }
}
