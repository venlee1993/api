<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Post::class, function (Faker $faker) {
    return [
        'uid' => $faker->numberBetween(1, 10),
        'cid' => $faker->numberBetween(1, 10),
        'title' => $faker->sentence(6, true),
        'tag' => $faker->word,
        'cover' => $faker->imageUrl(120, 120),
        'content' => $faker->paragraph(10, true),
        'status' => $faker->randomElement([1, 0])
    ];
});
