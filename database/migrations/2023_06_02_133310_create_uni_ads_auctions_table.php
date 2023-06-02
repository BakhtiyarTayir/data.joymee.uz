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
        Schema::create('uni_ads_auction', function (Blueprint $table) {
            $table->id('ads_auction_id');
            $table->unsignedBigInteger('ads_auction_id_ad')->default(0);
            $table->timestamp('ads_auction_date')->nullable();
            $table->float('ads_auction_price')->default(0);
            $table->unsignedBigInteger('ads_auction_id_user')->default(0);
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_auction_id_ad')->references('id')->on('ads');
            // $table->foreign('ads_auction_id_user')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_auction');
    }
};
