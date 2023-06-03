<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('uni_clients_orders_ads', function (Blueprint $table) {
            $table->id('clients_orders_ads_id');
            $table->unsignedBigInteger('clients_orders_ads_ad_id')->default(0);
            $table->unsignedBigInteger('clients_orders_ads_count')->default(0);
            $table->float('clients_orders_ads_total')->default(0);
            $table->unsignedBigInteger('clients_orders_ads_order_id')->default(0);
            $table->unsignedBigInteger('clients_orders_ads_user_id')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_orders_ads');
    }
};
