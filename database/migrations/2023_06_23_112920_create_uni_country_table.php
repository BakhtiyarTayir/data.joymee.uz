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
        Schema::create('uni_country', function (Blueprint $table) {
            $table->increments('country_id');
            $table->string('country_name', 128)->default('');
            $table->integer('country_status')->default(0);
            $table->string('country_alias');
            $table->string('country_lat', 30)->default('0');
            $table->string('country_lng', 30)->default('0');
            $table->text('country_desc')->nullable();
            $table->string('country_format_phone')->nullable();
            $table->string('country_code_phone')->nullable();
            $table->string('country_image')->nullable();
            $table->string('country_declination')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_country');
    }
};
