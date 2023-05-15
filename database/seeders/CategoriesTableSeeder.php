<?php

namespace Database\Seeders;

use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            [
                'name' => 'Category 1',
                'slug' => 'category-1',
                'category_id' => null
            ],
            [
                'name' => 'Subcategory 1.1',
                'slug' => 'subcategory-1-1',
                'category_id' => 1
            ],
            [
                'name' => 'Subcategory 1.2',
                'slug' => 'subcategory-1-2',
                'category_id' => 1
            ],
            [
                'name' => 'Category 2',
                'slug' => 'category-2',
                'category_id' => null
            ],
            [
                'name' => 'Subcategory 2.1',
                'slug' => 'subcategory-2-1',
                'category_id' => 4
            ],
            // Add more categories here...
        ];
        $i = 1;
        foreach ($categories as $categoryData) {
            $category = new Category();
            $category->id = $i++;
            $category->name = $categoryData['name'];
            $category->slug = $categoryData['slug'];
            $category->category_id = $categoryData['category_id'];
            $category->updated_at = null;
            $category->created_at = null;
            $category->save();
        }
    }
}
