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
        Schema::create('uni_ads_keywords', function (Blueprint $table) {
            $table->id('ads_keywords_id');
            $table->string('ads_keywords_tag')->nullable();
            $table->string('ads_keywords_params')->nullable();
            $table->unsignedBigInteger('ads_keywords_id_cat')->default(0);
            $table->unsignedBigInteger('ads_keywords_count_click')->default(0);
            $table->string('ads_keywords_macros')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_keywords');
    }
};
