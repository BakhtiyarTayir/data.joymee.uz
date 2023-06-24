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
        Schema::create('uni_ads_auction', function (Blueprint $table) {
            $table->integer('ads_auction_id', true);
            $table->integer('ads_auction_id_ad')->default(0);
            $table->timestamp('ads_auction_date')->nullable();
            $table->float('ads_auction_price', 10, 0)->default(0);
            $table->integer('ads_auction_id_user')->default(0);
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
