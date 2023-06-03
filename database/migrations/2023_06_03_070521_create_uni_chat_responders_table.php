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
        Schema::create('uni_chat_responders', function (Blueprint $table) {
            $table->integer('chat_responders_id')->primary();
            $table->string('chat_responders_name', 255)->nullable();
            $table->text('chat_responders_text')->nullable();
            $table->timestamp('chat_responders_date')->nullable();
            $table->integer('chat_responders_count_users')->default(0);
            $table->tinyInteger('chat_responders_status')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_chat_responders');
    }
};
