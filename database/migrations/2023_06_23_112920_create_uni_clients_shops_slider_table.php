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
        Schema::create('uni_clients_shops_slider', function (Blueprint $table) {
            $table->integer('clients_shops_slider_id', true);
            $table->integer('clients_shops_slider_id_shop')->default(0);
            $table->string('clients_shops_slider_image')->nullable();
            $table->integer('clients_shops_slider_sort')->default(0);
            $table->integer('clients_shops_slider_id_user')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_shops_slider');
    }
};
