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
        Schema::create('uni_ads_subscriptions', function (Blueprint $table) {
            $table->id('ads_subscriptions_id');
            $table->string('ads_subscriptions_email')->nullable();
            $table->unsignedBigInteger('ads_subscriptions_id_user')->default(0);
            $table->text('ads_subscriptions_params')->nullable();
            $table->timestamp('ads_subscriptions_date')->nullable();
            $table->unsignedBigInteger('ads_subscriptions_period')->default(0);
            $table->timestamp('ads_subscriptions_date_update')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_subscriptions');
    }
};
