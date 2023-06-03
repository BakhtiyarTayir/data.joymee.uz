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
        Schema::create('uni_ads_filters_alias', function (Blueprint $table) {
            $table->id('ads_filters_alias_id');
            $table->unsignedBigInteger('ads_filters_alias_id_filter_item')->default(0);
            $table->string('ads_filters_alias_title')->nullable();
            $table->string('ads_filters_alias_alias')->nullable();
            $table->unsignedBigInteger('ads_filters_alias_id_cat')->default(0);
            $table->text('ads_filters_alias_desc')->nullable();
            $table->string('ads_filters_alias_h1')->nullable();
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_filters_alias_id_filter_item')->references('id')->on('filter_items');
            // $table->foreign('ads_filters_alias_id_cat')->references('id')->on('categories');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_filters_alias');
    }
};
