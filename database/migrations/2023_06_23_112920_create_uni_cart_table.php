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
        Schema::create('uni_cart', function (Blueprint $table) {
            $table->integer('cart_id', true);
            $table->integer('cart_ad_id')->default(0);
            $table->integer('cart_user_id')->default(0);
            $table->timestamp('cart_date_add')->nullable();
            $table->integer('cart_count')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_cart');
    }
};
