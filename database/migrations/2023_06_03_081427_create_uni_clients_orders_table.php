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
        Schema::create('uni_clients_orders', function (Blueprint $table) {
            $table->id('clients_orders_id');
            $table->unsignedBigInteger('clients_orders_from_user_id')->default(0);
            $table->timestamp('clients_orders_date')->nullable();
            $table->unsignedBigInteger('clients_orders_status')->default(0);
            $table->unsignedBigInteger('clients_orders_uniq_id')->default(0);
            $table->unsignedTinyInteger('clients_orders_secure')->default(0);
            $table->unsignedBigInteger('clients_orders_to_user_id')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_orders');
    }
};
