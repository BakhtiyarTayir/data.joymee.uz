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
        Schema::create('uni_ads_filters_items', function (Blueprint $table) {
            $table->integer('ads_filters_items_id', true);
            $table->integer('ads_filters_items_id_filter')->default(0)->index('id_filter');
            $table->string('ads_filters_items_value')->nullable();
            $table->integer('ads_filters_items_id_item_parent')->default(0);
            $table->string('ads_filters_items_alias')->nullable();
            $table->integer('ads_filters_items_sort')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_filters_items');
    }
};
