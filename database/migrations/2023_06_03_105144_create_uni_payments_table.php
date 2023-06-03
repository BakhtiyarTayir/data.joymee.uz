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
        Schema::create('uni_payments', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255)->charset('utf8')->nullable();
            $table->string('logo', 100)->charset('utf8')->nullable();
            $table->text('param')->charset('utf8')->nullable();
            $table->integer('visible')->default(0);
            $table->string('code', 50)->charset('utf8')->nullable();
            $table->integer('secure')->default(0);
            $table->float('secure_percent_service')->default(0);
            $table->float('secure_percent_payment')->default(0);
            $table->float('secure_other_payment')->default(0);
            $table->float('secure_min_amount_payment')->default(0);
            $table->float('secure_max_amount_payment')->default(0);
            $table->string('secure_score_type', 255)->nullable();
            $table->integer('secure_add_card')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_payments');
    }
};
