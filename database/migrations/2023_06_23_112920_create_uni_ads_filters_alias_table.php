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
        Schema::create('uni_ads_filters_alias', function (Blueprint $table) {
            $table->integer('ads_filters_alias_id', true);
            $table->integer('ads_filters_alias_id_filter_item')->default(0);
            $table->string('ads_filters_alias_title')->nullable();
            $table->string('ads_filters_alias_alias')->nullable();
            $table->integer('ads_filters_alias_id_cat')->default(0);
            $table->text('ads_filters_alias_desc')->nullable();
            $table->string('ads_filters_alias_h1')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_filters_alias');
    }
};
