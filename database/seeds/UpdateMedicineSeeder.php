<?php

use Illuminate\Database\Seeder;

class UpdateMedicineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('medicines')->where('id', 1)->update(['image' => 'asam_mefenamat1.jpg']);
        DB::table('medicines')->where('id', 2)->update(['image' => 'asam_mefenamat2.jpg']);
        DB::table('medicines')->where('id', 3)->update(['image' => 'ibuprofen1.jpg']);
        DB::table('medicines')->where('id', 4)->update(['image' => 'ibuprofen2.jpg']);
        DB::table('medicines')->where('id', 5)->update(['image' => 'asam_mefenamat3.jpg']);
        DB::table('medicines')->where('id', 6)->update(['image' => 'ketoprofen1.jpg']);
        DB::table('medicines')->where('id', 7)->update(['image' => 'ketoprofen2.jpg']);
        DB::table('medicines')->where('id', 8)->update(['image' => 'alopurinol1.jpg']);
        DB::table('medicines')->where('id', 9)->update(['image' => 'alopurinol2.jpg']);
        DB::table('medicines')->where('id', 10)->update(['image' => 'kolkisin.jpg']);
        DB::table('medicines')->where('id', 11)->update(['image' => 'bupivakain.jpeg']);
        DB::table('medicines')->where('id', 12)->update(['image' => 'lidokain1.jpg']);
        DB::table('medicines')->where('id', 13)->update(['image' => 'lidokain2.jpg']);
        DB::table('medicines')->where('id', 14)->update(['image' => 'propranolol.jpg']);
        DB::table('medicines')->where('id', 15)->update(['image' => 'betahistin1.jpg']);
        DB::table('medicines')->where('id', 16)->update(['image' => 'betahistin2.jpeg']);
    }
}
