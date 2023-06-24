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
        Schema::create('uni_ads_keywords', function (Blueprint $table) {
            $table->integer('ads_keywords_id', true);
            $table->string('ads_keywords_tag')->nullable();
            $table->string('ads_keywords_params')->nullable();
            $table->integer('ads_keywords_id_cat')->default(0);
            $table->integer('ads_keywords_count_click')->default(0);
            $table->string('ads_keywords_macros')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_keywords');
    }
};
