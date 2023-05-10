<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            ['id' => '1615b6bb-7792-495a-998d-e522abb4a29f','role_id' => '5762ddd2-dad9-4729-b77a-7b06ea14eb3e' , 'email' => 'buyer@gmail.com','first_name' => 'James Francis', 'last_name' => 'Ga', 'password'=> bcrypt('password123'), 'contact_number' => '0938989454', 'address_id' => '1'],
        ]);
    }
}
