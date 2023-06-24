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
        Schema::create('uni_boxberry_points', function (Blueprint $table) {
            $table->integer('boxberry_points_id', true);
            $table->string('boxberry_points_code')->nullable();
            $table->string('boxberry_points_address')->nullable();
            $table->string('boxberry_points_phone')->nullable();
            $table->string('boxberry_points_workshedule')->nullable();
            $table->string('boxberry_points_gps')->nullable();
            $table->string('boxberry_points_city_code')->nullable();
            $table->integer('boxberry_points_send')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_boxberry_points');
    }
};
