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
        Schema::create('uni_services_order', function (Blueprint $table) {
            $table->integer('services_order_id', true);
            $table->integer('services_order_id_ads')->default(0)->index('id_ads');
            $table->timestamp('services_order_time_validity')->nullable()->index('time_validity');
            $table->integer('services_order_id_service')->default(0);
            $table->integer('services_order_count_day')->default(1);
            $table->timestamp('services_order_time_create')->nullable();
            $table->integer('services_order_status')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_order');
    }
};
