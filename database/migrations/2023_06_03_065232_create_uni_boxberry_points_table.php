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
        Schema::create('uni_boxberry_points', function (Blueprint $table) {
            $table->integer('boxberry_points_id')->primary();
            $table->string('boxberry_points_code', 255)->nullable();
            $table->string('boxberry_points_address', 255)->nullable();
            $table->string('boxberry_points_phone', 255)->nullable();
            $table->string('boxberry_points_workshedule', 255)->nullable();
            $table->string('boxberry_points_gps', 255)->nullable();
            $table->string('boxberry_points_city_code', 255)->nullable();
            $table->boolean('boxberry_points_send')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_boxberry_points');
    }
};
