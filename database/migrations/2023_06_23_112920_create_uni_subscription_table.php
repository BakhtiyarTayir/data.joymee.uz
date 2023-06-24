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
        Schema::create('uni_subscription', function (Blueprint $table) {
            $table->integer('subscription_id', true);
            $table->string('subscription_email', 50);
            $table->timestamp('subscription_datetime_add')->nullable();
            $table->string('subscription_ip', 50)->nullable();
            $table->string('subscription_name', 100)->nullable();
            $table->integer('subscription_user_id')->default(0);
            $table->integer('subscription_status')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_subscription');
    }
};
