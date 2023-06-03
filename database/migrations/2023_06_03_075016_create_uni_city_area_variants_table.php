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
        Schema::create('uni_city_area_variants', function (Blueprint $table) {
            $table->integer('city_area_variants_id')->primary();
            $table->integer('city_area_variants_id_ad')->default(0);
            $table->integer('city_area_variants_id_area')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_city_area_variants');
    }
};
