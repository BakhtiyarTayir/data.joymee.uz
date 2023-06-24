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
        Schema::create('uni_region', function (Blueprint $table) {
            $table->increments('region_id');
            $table->unsignedInteger('country_id')->default(0)->index('country_id');
            $table->string('region_name', 64)->default('');
            $table->string('region_alias');
            $table->text('region_desc')->nullable();
            $table->string('region_declination')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_region');
    }
};
