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
        Schema::create('uni_city', function (Blueprint $table) {
            $table->increments('city_id');
            $table->unsignedInteger('country_id')->default(0)->index('country_id');
            $table->unsignedInteger('region_id')->default(0)->index('region_id');
            $table->string('city_name', 128)->default('');
            $table->string('city_alias')->index('alias');
            $table->integer('city_count_view')->default(0);
            $table->integer('city_default')->default(0);
            $table->text('city_desc')->nullable();
            $table->string('city_declination')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_city');
    }
};
