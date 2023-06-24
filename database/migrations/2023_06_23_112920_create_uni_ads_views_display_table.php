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
        Schema::create('uni_ads_views_display', function (Blueprint $table) {
            $table->integer('ads_views_display_id', true);
            $table->integer('ads_views_display_id_ad')->default(0);
            $table->timestamp('ads_views_display_date')->nullable();
            $table->integer('ads_views_display_count')->default(0);
            $table->integer('ads_views_display_id_user')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_views_display');
    }
};
