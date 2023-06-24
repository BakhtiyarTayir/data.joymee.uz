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
        Schema::create('uni_chat_responders', function (Blueprint $table) {
            $table->integer('chat_responders_id', true);
            $table->string('chat_responders_name')->nullable();
            $table->text('chat_responders_text')->nullable();
            $table->timestamp('chat_responders_date')->nullable();
            $table->integer('chat_responders_count_users')->default(0);
            $table->integer('chat_responders_status')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_chat_responders');
    }
};
