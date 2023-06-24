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
        Schema::create('uni_clients_shops_page', function (Blueprint $table) {
            $table->integer('clients_shops_page_id', true);
            $table->integer('clients_shops_page_id_shop')->default(0);
            $table->string('clients_shops_page_name')->nullable();
            $table->text('clients_shops_page_text')->nullable();
            $table->integer('clients_shops_page_status')->default(1);
            $table->string('clients_shops_page_alias')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_shops_page');
    }
};
