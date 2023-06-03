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
        Schema::create('uni_metro', function (Blueprint $table) {
            $table->id();
            $table->integer('city_id')->default(0);
            $table->string('name', 255)->nullable();
            $table->string('color', 20)->nullable();
            $table->integer('parent_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_metro');
    }
};
