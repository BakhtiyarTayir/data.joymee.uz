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
        Schema::create('uni_clients_subscriptions', function (Blueprint $table) {
            $table->id('clients_subscriptions_id');
            $table->unsignedBigInteger('clients_subscriptions_id_user_from')->default(0);
            $table->unsignedBigInteger('clients_subscriptions_id_user_to')->default(0);
            $table->unsignedBigInteger('clients_subscriptions_id_shop')->default(0);
            $table->timestamp('clients_subscriptions_time_update')->nullable();
            $table->timestamp('clients_subscriptions_date_add')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_subscriptions');
    }
};
