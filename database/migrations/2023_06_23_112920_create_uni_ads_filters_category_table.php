<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('uni_ads_filters_category', function (Blueprint $table) {
            $table->integer('ads_filters_category_id', true);
            $table->integer('ads_filters_category_id_cat')->default(0);
            $table->integer('ads_filters_category_id_filter')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_filters_category');
    }
};
