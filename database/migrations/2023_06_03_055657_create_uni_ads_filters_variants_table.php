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
        Schema::create('uni_ads_filters_variants', function (Blueprint $table) {
            $table->id('ads_filters_variants_id');
            $table->unsignedBigInteger('ads_filters_variants_id_filter')->default(0);
            $table->string('ads_filters_variants_val')->nullable();
            $table->unsignedBigInteger('ads_filters_variants_product_id')->default(0);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_filters_variants_id_filter')->references('id')->on('filters');
            // $table->foreign('ads_filters_variants_product_id')->references('id')->on('products');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_filters_variants');
    }
};
