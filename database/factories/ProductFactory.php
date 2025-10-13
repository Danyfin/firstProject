<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            "name"=> fake()->word(),
            "price"=> fake()->randomFloat(2, 500, 15000),
            "description"=> fake()->paragraph(),
            "category_id"=> Category::inRandomOrder()->first()->id,
        ];
    }
}
