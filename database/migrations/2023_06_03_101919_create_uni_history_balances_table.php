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
        Schema::create('uni_history_balance', function (Blueprint $table) {
            $table->id();
            $table->integer('id_user')->default(0);
            $table->float('summa')->default(0);
            $table->timestamp('datetime')->nullable();
            $table->string('method', 50)->nullable();
            $table->string('name', 200)->nullable();
            $table->string('action', 1)->nullable();
            $table->integer('id_order')->default(0);
            $table->integer('id_user_from')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_history_balance');
    }
};
