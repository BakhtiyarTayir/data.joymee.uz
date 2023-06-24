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
        Schema::create('uni_chat_users', function (Blueprint $table) {
            $table->integer('chat_users_id', true);
            $table->integer('chat_users_id_ad')->default(0);
            $table->integer('chat_users_id_user')->default(0);
            $table->string('chat_users_id_hash')->nullable();
            $table->integer('chat_users_id_interlocutor')->default(0);
            $table->integer('chat_users_id_responder')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_chat_users');
    }
};
