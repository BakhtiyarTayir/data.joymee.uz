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
        Schema::create('uni_secure', function (Blueprint $table) {
            $table->integer('secure_id', true);
            $table->timestamp('secure_date')->nullable();
            $table->integer('secure_status')->default(0);
            $table->integer('secure_id_user_buyer')->default(0);
            $table->integer('secure_id_order')->default(0);
            $table->integer('secure_id_user_seller')->default(0);
            $table->float('secure_price', 10, 0)->default(0);
            $table->integer('secure_status_payment_user')->default(0);
            $table->string('secure_delivery_type', 50)->nullable();
            $table->float('secure_delivery_price', 10, 0)->default(0);
            $table->string('secure_delivery_invoice_number')->nullable();
            $table->string('secure_delivery_track_number')->nullable();
            $table->string('secure_delivery_errors')->nullable();
            $table->string('secure_delivery_name')->nullable();
            $table->string('secure_delivery_surname')->nullable();
            $table->string('secure_delivery_patronymic')->nullable();
            $table->string('secure_delivery_id_point')->nullable();
            $table->string('secure_delivery_phone')->nullable();
            $table->integer('secure_marketplace')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_secure');
    }
};
