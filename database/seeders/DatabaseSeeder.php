<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\CategoryBoard\UniCategoryBoard;
use App\Models\Ads\UniAd;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void

    {
         UniCategoryBoard::factory(10)->create();
         UniAd::factory(40)->create();

//         \App\Models\UniAd::factory()->create([
//             'name' => 'Test User',
//             'email' => 'test@example.com',
//         ]);
    }
}
