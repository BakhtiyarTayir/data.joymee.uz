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
        Schema::create('uni_boxberry_cities', function (Blueprint $table) {
            $table->integer('boxberry_cities_id', true);
            $table->string('boxberry_cities_name')->nullable();
            $table->string('boxberry_cities_code')->nullable();
            $table->string('boxberry_cities_region')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_boxberry_cities');
    }
};
