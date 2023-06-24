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
        Schema::create('uni_ads_subscriptions', function (Blueprint $table) {
            $table->integer('ads_subscriptions_id', true);
            $table->string('ads_subscriptions_email')->nullable();
            $table->integer('ads_subscriptions_id_user')->default(0);
            $table->text('ads_subscriptions_params')->nullable();
            $table->timestamp('ads_subscriptions_date')->nullable();
            $table->integer('ads_subscriptions_period')->default(0);
            $table->timestamp('ads_subscriptions_date_update')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_subscriptions');
    }
};
