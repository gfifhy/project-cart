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
        $categories = ['Cosmetics'];
        for ($i = 0; $i < count($categories); $i++) {
            DB::table('categories')->insert([
                ['name' => $categories[$i], 'slug' => str::slug($categories[$i])],
            ]);
        }
    }
}
