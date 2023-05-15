<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $brands = [
            [
                'name' => 'Brand 1',
                'slug' => 'brand-1'
            ],
            [
                'name' => 'Brand 2',
                'slug' => 'brand-2'
            ],
            [
                'name' => 'Brand 3',
                'slug' => 'brand-3'
            ],
            // Add more brands here...
        ];

        foreach ($brands as $brandData) {
            $brand = new Brand();
            $brand->id = Str::uuid();
            $brand->name = $brandData['name'];
            $brand->slug = $brandData['slug'];
            $brand->save();
        }
    }
}
