<?php

namespace Database\Factories\Ads;

use App\Models\CategoryBoard\UniCategoryBoard;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Ads\UniAd>
 */
class UniAdFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'ads_title' => $this->faker->word,
            'ads_alias' => $this->faker->slug(1),
            'ads_text' => $this->faker->sentence,
            'ads_id_cat' => UniCategoryBoard::get()->random()->category_board_id,
            'ads_id_user' => $this->faker->numberBetween(1, 10),
            'ads_images' => $this->faker->imageUrl(),
            'ads_latitude' => $this->faker->latitude(35, 43),
            'ads_longitude' => $this->faker->longitude(65, 71),
            'ads_datetime_add' => $this->faker->date(),
         ];
    }
}
