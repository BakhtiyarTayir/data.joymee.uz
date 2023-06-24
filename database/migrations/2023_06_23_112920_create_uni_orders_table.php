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
        Schema::create('uni_orders', function (Blueprint $table) {
            $table->integer('orders_id', true);
            $table->string('orders_uid')->nullable();
            $table->float('orders_price', 10, 0)->default(0);
            $table->timestamp('orders_date')->nullable();
            $table->integer('orders_status')->nullable()->default(0);
            $table->integer('orders_id_user')->default(0);
            $table->integer('orders_status_pay')->default(0);
            $table->string('orders_title')->nullable();
            $table->integer('orders_id_ad')->default(0);
            $table->string('orders_action_name')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_orders');
    }
};
