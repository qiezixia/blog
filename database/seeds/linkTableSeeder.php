<?php

use Illuminate\Database\Seeder;

class linkTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('link')->insert([
            'link_name' => '测试',
            'link_title' => 'sdjfgkdfjgkjkhlk;l',
            'link_url' =>'http://www.baidu.com',
        ]);
    }
}
