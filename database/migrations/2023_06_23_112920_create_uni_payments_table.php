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
        Schema::create('uni_payments', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name')->nullable();
            $table->string('logo', 100)->nullable();
            $table->text('param')->nullable();
            $table->integer('visible')->default(0);
            $table->string('code', 50)->nullable();
            $table->integer('secure')->default(0);
            $table->float('secure_percent_service', 10, 0)->default(0);
            $table->float('secure_percent_payment', 10, 0)->default(0);
            $table->float('secure_other_payment', 10, 0)->default(0);
            $table->float('secure_min_amount_payment', 10, 0)->default(0);
            $table->float('secure_max_amount_payment', 10, 0)->default(0);
            $table->string('secure_score_type')->nullable();
            $table->integer('secure_add_card')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_payments');
    }
};
