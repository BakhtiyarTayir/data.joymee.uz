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
        Schema::create('uni_boxberry_cities', function (Blueprint $table) {
            $table->integer('boxberry_cities_id')->primary();
            $table->string('boxberry_cities_name', 255)->nullable();
            $table->string('boxberry_cities_code', 255)->nullable();
            $table->string('boxberry_cities_region', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_boxberry_cities');
    }
};
