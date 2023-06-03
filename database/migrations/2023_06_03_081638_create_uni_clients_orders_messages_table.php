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
        Schema::create('uni_clients_orders_messages', function (Blueprint $table) {
            $table->id('clients_orders_messages_id');
            $table->unsignedBigInteger('clients_orders_messages_from_id_user')->default(0);
            $table->unsignedBigInteger('clients_orders_messages_to_id_user')->default(0);
            $table->text('clients_orders_messages_message');
            $table->unsignedBigInteger('clients_orders_messages_id_order')->default(0);
            $table->timestamp('clients_orders_messages_date')->nullable();
            $table->text('clients_orders_messages_files');
            $table->unsignedTinyInteger('clients_orders_messages_status')->default(0);
            $table->unsignedTinyInteger('clients_orders_messages_notification')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_orders_messages');
    }
};
