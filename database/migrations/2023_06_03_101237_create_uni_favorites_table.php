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
        Schema::create('uni_favorites', function (Blueprint $table) {
            $table->id('favorites_id');
            $table->integer('favorites_id_ad')->default(0);
            $table->integer('favorites_from_id_user')->default(0);
            $table->integer('favorites_to_id_user')->default(0);
            $table->timestamp('favorites_date')->nullable();
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_favorites');
    }
};
