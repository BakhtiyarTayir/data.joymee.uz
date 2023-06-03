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
        Schema::create('uni_orders_parameters', function (Blueprint $table) {
            $table->id('orders_parameters_id');
            $table->text('orders_parameters_param')->nullable();
            $table->string('orders_parameters_id_uniq', 255)->nullable();
            $table->timestamp('orders_parameters_date')->nullable();
            $table->integer('orders_parameters_status')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_orders_parameters');
    }
};
