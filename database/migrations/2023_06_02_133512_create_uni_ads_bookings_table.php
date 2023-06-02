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
        Schema::create('uni_ads_booking', function (Blueprint $table) {
            $table->id('ads_booking_id');
            $table->unsignedBigInteger('ads_booking_id_ad')->default(0);
            $table->unsignedBigInteger('ads_booking_id_user_from')->default(0);
            $table->unsignedBigInteger('ads_booking_id_user_to')->default(0);
            $table->timestamp('ads_booking_date_start')->nullable();
            $table->timestamp('ads_booking_date_end')->nullable();
            $table->unsignedBigInteger('ads_booking_guests')->default(0);
            $table->unsignedInteger('ads_booking_status')->default(0);
            $table->unsignedBigInteger('ads_booking_number_days')->default(0);
            $table->timestamp('ads_booking_date_add')->nullable();
            $table->text('ads_booking_additional_services')->nullable();
            $table->unsignedInteger('ads_booking_status_pay')->default(0);
            $table->unsignedBigInteger('ads_booking_id_order')->default(0);
            $table->float('ads_booking_total_price')->default(0);
            $table->unsignedInteger('ads_booking_variant')->default(0);
            $table->string('ads_booking_hour_start')->nullable();
            $table->unsignedBigInteger('ads_booking_hour_count')->default(0);
            $table->string('ads_booking_measure')->nullable();
            $table->text('ads_booking_reason_cancel')->nullable();
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_booking_id_ad')->references('id')->on('ads');
            // $table->foreign('ads_booking_id_user_from')->references('id')->on('users');
            // $table->foreign('ads_booking_id_user_to')->references('id')->on('users');
            // $table->foreign('ads_booking_id_order')->references('id')->on('orders');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_booking');
    }
};
