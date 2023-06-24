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
        Schema::create('uni_ads_booking_dates', function (Blueprint $table) {
            $table->integer('ads_booking_dates_id', true);
            $table->timestamp('ads_booking_dates_date')->nullable();
            $table->integer('ads_booking_dates_id_ad')->default(0);
            $table->integer('ads_booking_dates_id_order')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_booking_dates');
    }
};
