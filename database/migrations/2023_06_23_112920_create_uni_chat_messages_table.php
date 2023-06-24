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
        Schema::create('uni_chat_messages', function (Blueprint $table) {
            $table->integer('chat_messages_id', true);
            $table->text('chat_messages_text')->nullable();
            $table->timestamp('chat_messages_date')->nullable();
            $table->integer('chat_messages_status')->nullable()->default(0)->index('chat_messages_status');
            $table->string('chat_messages_id_hash')->nullable()->index('chat_messages_id_hash');
            $table->integer('chat_messages_action')->default(0);
            $table->integer('chat_messages_id_user')->default(0)->index('chat_messages_id_user');
            $table->integer('chat_messages_notification')->default(0);
            $table->text('chat_messages_attach')->nullable();
            $table->integer('chat_messages_id_responder')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_chat_messages');
    }
};
