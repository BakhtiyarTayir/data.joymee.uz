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
        Schema::create('uni_ads_filters', function (Blueprint $table) {
            $table->id('ads_filters_id');
            $table->string('ads_filters_name')->charset('utf8')->nullable();
            $table->unsignedTinyInteger('ads_filters_visible')->default(1);
            $table->string('ads_filters_type')->charset('utf8');
            $table->unsignedBigInteger('ads_filters_position')->default(0);
            $table->unsignedTinyInteger('ads_filters_podcat')->default(1);
            $table->unsignedBigInteger('ads_filters_id_parent')->default(0);
            $table->string('ads_filters_alias')->charset('utf8')->nullable();
            $table->unsignedTinyInteger('ads_filters_required')->default(1);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_filters_id_parent')->references('ads_filters_id')->on('uni_ads_filters');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_filters');
    }
};
