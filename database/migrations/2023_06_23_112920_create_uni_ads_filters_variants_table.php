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
        Schema::create('uni_ads_filters_variants', function (Blueprint $table) {
            $table->integer('ads_filters_variants_id', true);
            $table->integer('ads_filters_variants_id_filter')->default(0);
            $table->string('ads_filters_variants_val')->nullable();
            $table->integer('ads_filters_variants_product_id')->default(0)->index('ads_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_filters_variants');
    }
};
