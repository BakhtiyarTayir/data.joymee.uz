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
        Schema::create('uni_orders', function (Blueprint $table) {
            $table->id('orders_id');
            $table->string('orders_uid', 255)->nullable();
            $table->float('orders_price')->default(0);
            $table->timestamp('orders_date')->nullable();
            $table->integer('orders_status')->default(0);
            $table->integer('orders_id_user')->default(0);
            $table->integer('orders_status_pay')->default(0);
            $table->string('orders_title', 255)->nullable();
            $table->integer('orders_id_ad')->default(0);
            $table->string('orders_action_name', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_orders');
    }
};
