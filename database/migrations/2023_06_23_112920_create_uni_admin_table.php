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
        Schema::create('uni_admin', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('pass')->nullable();
            $table->string('fio', 150)->nullable();
            $table->string('image', 150)->nullable();
            $table->string('email', 50)->nullable();
            $table->string('phone', 50)->nullable();
            $table->integer('role')->default(1);
            $table->timestamp('datetime_view')->nullable();
            $table->integer('main_admin')->default(0);
            $table->text('privileges')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_admin');
    }
};
