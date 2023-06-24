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
        Schema::create('uni_notifications', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('title')->nullable();
            $table->timestamp('datetime')->nullable();
            $table->string('code', 50)->nullable();
            $table->string('icon', 100)->nullable();
            $table->integer('count')->default(1);
            $table->string('link', 100)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_notifications');
    }
};
