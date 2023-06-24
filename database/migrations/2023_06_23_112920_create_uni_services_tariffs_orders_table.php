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
        Schema::create('uni_services_tariffs_orders', function (Blueprint $table) {
            $table->integer('services_tariffs_orders_id', true);
            $table->integer('services_tariffs_orders_id_tariff')->default(0);
            $table->integer('services_tariffs_orders_days')->default(0);
            $table->timestamp('services_tariffs_orders_date_activation')->nullable();
            $table->integer('services_tariffs_orders_id_user')->default(0);
            $table->timestamp('services_tariffs_orders_date_completion')->nullable();
            $table->integer('services_tariffs_orders_status')->default(0);
            $table->float('services_tariffs_orders_price', 10, 0)->default(0);
            $table->integer('services_tariffs_orders_notification')->default(0);
            $table->integer('services_tariffs_orders_notification_pay')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_tariffs_orders');
    }
};
