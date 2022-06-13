<?php

use Illuminate\Database\Seeder;

class BuyerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('buyers')->insert(
            ['name' => 'Ari',
             'address' => 'Surabaya'
        ]);
        DB::table('buyers')->insert(
            ['name' => 'Bryant',
             'address' => 'Sidoarjo'
        ]);
        DB::table('buyers')->insert(
            ['name' => 'Wijaya',
             'address' => 'Porong'
        ]);
    }
}
