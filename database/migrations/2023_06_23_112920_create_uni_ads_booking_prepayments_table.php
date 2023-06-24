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
        Schema::create('uni_ads_booking_prepayments', function (Blueprint $table) {
            $table->integer('ads_booking_prepayments_id', true);
            $table->integer('ads_booking_prepayments_id_order')->default(0);
            $table->float('ads_booking_prepayments_amount', 10, 0)->default(0);
            $table->integer('ads_booking_prepayments_status')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_booking_prepayments');
    }
};
