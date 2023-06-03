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
        Schema::create('uni_clients_shops', function (Blueprint $table) {
            $table->id('clients_shops_id');
            $table->unsignedBigInteger('clients_shops_id_user')->default(0);
            $table->string('clients_shops_id_hash', 255)->nullable();
            $table->string('clients_shops_title', 100)->nullable();
            $table->string('clients_shops_desc', 500)->nullable();
            $table->string('clients_shops_logo', 255)->nullable();
            $table->unsignedBigInteger('clients_shops_count_view')->default(0);
            $table->unsignedBigInteger('clients_shops_id_theme_category')->default(0);
            $table->timestamp('clients_shops_time_validity')->nullable();
            $table->unsignedTinyInteger('clients_shops_status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_shops');
    }
};
