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
        Schema::create('uni_ads_filters_category', function (Blueprint $table) {
            $table->id('ads_filters_category_id');
            $table->unsignedBigInteger('ads_filters_category_id_cat')->default(0);
            $table->unsignedBigInteger('ads_filters_category_id_filter')->default(0);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_filters_category_id_cat')->references('id')->on('categories');
            // $table->foreign('ads_filters_category_id_filter')->references('id')->on('filters');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_filters_categoriy');
    }
};
