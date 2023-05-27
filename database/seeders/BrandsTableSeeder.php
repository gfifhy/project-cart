<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $brands = ['KIMUSE'];
        $id = ['8172ff3f-d18c-4deb-b0b0-c660dd235192'];
        for ($i=0; $i<count($brands); $i++){
            DB::table('brands')->insert([
                ['id' => $id[$i], 'name' => $brands[$i], 'slug' => str::slug($brands[$i])],
            ]);
        }
    }
}
