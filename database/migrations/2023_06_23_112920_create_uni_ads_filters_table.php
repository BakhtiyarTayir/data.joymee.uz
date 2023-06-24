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
        Schema::create('uni_ads_filters', function (Blueprint $table) {
            $table->integer('ads_filters_id', true);
            $table->string('ads_filters_name')->nullable();
            $table->integer('ads_filters_visible')->default(1);
            $table->string('ads_filters_type', 50);
            $table->integer('ads_filters_position')->default(0);
            $table->integer('ads_filters_podcat')->default(1);
            $table->integer('ads_filters_id_parent')->default(0);
            $table->string('ads_filters_alias')->nullable();
            $table->integer('ads_filters_required')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_filters');
    }
};
