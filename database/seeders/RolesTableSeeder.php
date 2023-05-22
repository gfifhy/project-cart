<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $roles = ["Buyer", "Admin", "Telesales"];
        $id = ['5762ddd2-dad9-4729-b77a-7b06ea14eb3e', '69717d90-078a-40b8-afd0-0f20a654b78e', 'b51b40ca-63a2-47f0-87e6-89480ceb9b69'];
        for ($i=0; $i<count($roles); $i++){
            DB::table('roles')->insert([
                ['id' => $id[$i], 'name' => $roles[$i], 'slug' => str::slug($roles[$i])],
            ]);
        }
    }
}
