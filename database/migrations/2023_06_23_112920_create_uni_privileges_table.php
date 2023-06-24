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
        Schema::create('uni_privileges', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('main_title', 100);
            $table->string('sub_title', 100);
            $table->string('value', 50);
            $table->string('uid', 50);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_privileges');
    }
};
