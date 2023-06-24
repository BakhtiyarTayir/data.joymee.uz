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
        Schema::create('uni_clients_shops', function (Blueprint $table) {
            $table->integer('clients_shops_id', true);
            $table->integer('clients_shops_id_user')->default(0);
            $table->string('clients_shops_id_hash')->nullable();
            $table->string('clients_shops_title', 100)->nullable();
            $table->string('clients_shops_desc', 500)->nullable();
            $table->string('clients_shops_logo')->nullable();
            $table->integer('clients_shops_count_view')->default(0);
            $table->integer('clients_shops_id_theme_category')->default(0);
            $table->timestamp('clients_shops_time_validity')->nullable();
            $table->integer('clients_shops_status')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_shops');
    }
};
