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
        Schema::create('uni_clients_orders_messages', function (Blueprint $table) {
            $table->integer('clients_orders_messages_id', true);
            $table->integer('clients_orders_messages_from_id_user')->default(0);
            $table->integer('clients_orders_messages_to_id_user')->default(0);
            $table->text('clients_orders_messages_message')->nullable();
            $table->integer('clients_orders_messages_id_order')->default(0);
            $table->timestamp('clients_orders_messages_date')->nullable();
            $table->text('clients_orders_messages_files')->nullable();
            $table->integer('clients_orders_messages_status')->default(0);
            $table->integer('clients_orders_messages_notification')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_orders_messages');
    }
};
