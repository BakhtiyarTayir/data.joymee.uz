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
        Schema::create('uni_ads_filters_items', function (Blueprint $table) {
            $table->id('ads_filters_items_id');
            $table->unsignedBigInteger('ads_filters_items_id_filter')->default(0);
            $table->string('ads_filters_items_value')->nullable();
            $table->unsignedBigInteger('ads_filters_items_id_item_parent')->default(0);
            $table->string('ads_filters_items_alias')->nullable();
            $table->unsignedBigInteger('ads_filters_items_sort')->default(0);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_filters_items_id_filter')->references('id')->on('filters');
            // $table->foreign('ads_filters_items_id_item_parent')->references('id')->on('uni_ads_filters_items');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_filters_items');
    }
};
