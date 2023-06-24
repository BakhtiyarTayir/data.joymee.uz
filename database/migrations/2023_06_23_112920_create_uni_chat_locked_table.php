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
        Schema::create('uni_chat_locked', function (Blueprint $table) {
            $table->integer('chat_locked_id', true);
            $table->integer('chat_locked_user_id')->default(0);
            $table->integer('chat_locked_user_id_locked')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_chat_locked');
    }
};
