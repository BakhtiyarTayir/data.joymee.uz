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
        Schema::create('uni_secure_ads', function (Blueprint $table) {
            $table->integer('secure_ads_id', true);
            $table->integer('secure_ads_ad_id')->default(0);
            $table->integer('secure_ads_count')->default(0);
            $table->integer('secure_ads_total')->default(0);
            $table->integer('secure_ads_order_id')->default(0);
            $table->integer('secure_ads_user_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_secure_ads');
    }
};
