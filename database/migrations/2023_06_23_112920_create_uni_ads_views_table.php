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
        Schema::create('uni_ads_views', function (Blueprint $table) {
            $table->integer('ads_views_id', true);
            $table->integer('ads_views_id_ad')->default(0);
            $table->timestamp('ads_views_date')->nullable();
            $table->integer('ads_views_id_user')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_views');
    }
};
