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
        Schema::create('uni_secure_payments', function (Blueprint $table) {
            $table->integer('secure_payments_id', true);
            $table->timestamp('secure_payments_date')->nullable();
            $table->integer('secure_payments_id_order')->default(0);
            $table->string('secure_payments_score')->nullable();
            $table->float('secure_payments_amount', 10, 0)->default(0);
            $table->integer('secure_payments_status')->default(0);
            $table->integer('secure_payments_id_user')->default(0);
            $table->text('secure_payments_errors')->nullable();
            $table->integer('secure_payments_status_pay')->default(0);
            $table->float('secure_payments_amount_percent', 10, 0)->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_secure_payments');
    }
};
