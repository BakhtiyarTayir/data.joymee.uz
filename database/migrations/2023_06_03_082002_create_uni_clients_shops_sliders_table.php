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
        Schema::create('uni_clients_shops_slider', function (Blueprint $table) {
            $table->id('clients_shops_slider_id');
            $table->unsignedBigInteger('clients_shops_slider_id_shop')->default(0);
            $table->string('clients_shops_slider_image', 255)->nullable();
            $table->unsignedBigInteger('clients_shops_slider_sort')->default(0);
            $table->unsignedBigInteger('clients_shops_slider_id_user')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_shops_slider');
    }
};
