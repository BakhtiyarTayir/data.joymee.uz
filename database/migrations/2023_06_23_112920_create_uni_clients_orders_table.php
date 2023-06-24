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
        Schema::create('uni_clients_orders', function (Blueprint $table) {
            $table->integer('clients_orders_id', true);
            $table->integer('clients_orders_from_user_id')->default(0);
            $table->timestamp('clients_orders_date')->nullable();
            $table->integer('clients_orders_status')->default(0);
            $table->integer('clients_orders_uniq_id')->default(0);
            $table->integer('clients_orders_secure')->default(0);
            $table->integer('clients_orders_to_user_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_orders');
    }
};
