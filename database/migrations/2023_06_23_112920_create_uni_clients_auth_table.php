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
        Schema::create('uni_clients_auth', function (Blueprint $table) {
            $table->integer('clients_auth_id', true);
            $table->string('clients_auth_token')->nullable();
            $table->timestamp('clients_auth_expiration')->nullable();
            $table->integer('clients_auth_user_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients_auth');
    }
};
