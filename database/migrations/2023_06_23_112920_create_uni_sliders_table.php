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
        Schema::create('uni_sliders', function (Blueprint $table) {
            $table->integer('sliders_id', true);
            $table->integer('sliders_sort')->default(0);
            $table->string('sliders_image')->nullable();
            $table->string('sliders_link')->nullable();
            $table->string('sliders_title1')->nullable();
            $table->string('sliders_title2')->nullable();
            $table->string('sliders_color_bg')->nullable();
            $table->integer('sliders_visible')->default(1);
            $table->integer('sliders_click')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_sliders');
    }
};
