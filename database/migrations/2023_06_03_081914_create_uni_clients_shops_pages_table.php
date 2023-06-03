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
        Schema::create('uni_clients_shops_page', function (Blueprint $table) {
            $table->id('clients_shops_page_id');
            $table->unsignedBigInteger('clients_shops_page_id_shop')->default(0);
            $table->string('clients_shops_page_name', 255)->nullable();
            $table->text('clients_shops_page_text')->nullable();
            $table->unsignedTinyInteger('clients_shops_page_status')->default(1);
            $table->string('clients_shops_page_alias', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_shops_page');
    }
};
