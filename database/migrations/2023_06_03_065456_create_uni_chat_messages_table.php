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
        Schema::create('uni_chat_messages', function (Blueprint $table) {
            $table->integer('chat_messages_id')->primary();
            $table->text('chat_messages_text')->charset('utf8');
            $table->timestamp('chat_messages_date')->nullable();
            $table->tinyInteger('chat_messages_status')->default(0);
            $table->string('chat_messages_id_hash', 255)->charset('utf8')->nullable();
            $table->integer('chat_messages_action')->default(0);
            $table->integer('chat_messages_id_user')->default(0);
            $table->integer('chat_messages_notification')->default(0);
            $table->text('chat_messages_attach')->nullable();
            $table->integer('chat_messages_id_responder')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_chat_messages');
    }
};
