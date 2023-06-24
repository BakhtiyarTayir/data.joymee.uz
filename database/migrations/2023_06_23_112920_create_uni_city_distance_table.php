<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uni_city_distance', function (Blueprint $table) {
            $table->integer('city_distance_id', true);
            $table->integer('city_distance_id_city_from')->default(0);
            $table->float('city_distance_km', 10, 0)->default(0);
            $table->integer('city_distance_id_city_to')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_city_distance');
    }
};
