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
        Schema::create('uni_languages', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255)->nullable();
            $table->integer('status')->default(0);
            $table->string('code', 20)->nullable();
            $table->string('iso', 10)->nullable();
            $table->integer('id_position')->default(0);
            $table->string('image')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_languages');
    }
};
