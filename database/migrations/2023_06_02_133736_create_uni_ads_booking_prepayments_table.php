<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('uni_ads_booking_prepayments', function (Blueprint $table) {
            $table->id('ads_booking_prepayments_id');
            $table->unsignedBigInteger('ads_booking_prepayments_id_order')->default(0);
            $table->float('ads_booking_prepayments_amount')->default(0);
            $table->unsignedInteger('ads_booking_prepayments_status')->default(0);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_booking_prepayments_id_order')->references('id')->on('orders');
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
