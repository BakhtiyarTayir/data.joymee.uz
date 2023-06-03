<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('uni_city', function (Blueprint $table) {
            $table->unsignedBigInteger('city_id')->primary();
            $table->unsignedBigInteger('country_id')->default(0);
            $table->unsignedBigInteger('region_id')->default(0);
            $table->string('city_name', 128)->charset('utf8')->default('');
            $table->string('city_alias', 255)->charset('utf8');
            $table->integer('city_count_view')->default(0);
            $table->boolean('city_default')->default(0);
            $table->text('city_desc')->charset('utf8')->nullable();
            $table->string('city_declination', 255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_city');
    }
};
