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
        Schema::create('uni_clients_orders_ads', function (Blueprint $table) {
            $table->integer('clients_orders_ads_id', true);
            $table->integer('clients_orders_ads_ad_id')->default(0);
            $table->integer('clients_orders_ads_count')->default(0);
            $table->float('clients_orders_ads_total', 10, 0)->default(0);
            $table->integer('clients_orders_ads_order_id')->default(0);
            $table->integer('clients_orders_ads_user_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_orders_ads');
    }
};
