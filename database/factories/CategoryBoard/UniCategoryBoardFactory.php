<?php

namespace Database\Factories\CategoryBoard;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CategoryBoard\UniCategoryBoard>
 */
class UniCategoryBoardFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'category_board_name' => $this->faker->word,
            'category_board_alias' => $this->faker->slug(1),
        ];
    }
}
