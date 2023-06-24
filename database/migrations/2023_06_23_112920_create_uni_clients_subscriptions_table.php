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
        Schema::create('uni_clients_subscriptions', function (Blueprint $table) {
            $table->integer('clients_subscriptions_id', true);
            $table->integer('clients_subscriptions_id_user_from')->default(0);
            $table->integer('clients_subscriptions_id_user_to')->default(0);
            $table->integer('clients_subscriptions_id_shop')->default(0);
            $table->timestamp('clients_subscriptions_time_update')->nullable();
            $table->timestamp('clients_subscriptions_date_add')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_subscriptions');
    }
};
