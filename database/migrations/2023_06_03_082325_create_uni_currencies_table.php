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
        Schema::create('uni_currency', function (Blueprint $table) {
            $table->integer('id')->primary();
            $table->string('name', 50);
            $table->string('sign', 10);
            $table->string('code', 10);
            $table->integer('id_position');
            $table->integer('visible')->default(1);
            $table->integer('main')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_currency');
    }
};
