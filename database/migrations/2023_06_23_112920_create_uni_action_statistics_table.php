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
        Schema::create('uni_action_statistics', function (Blueprint $table) {
            $table->integer('action_statistics_id', true);
            $table->timestamp('action_statistics_date')->nullable();
            $table->integer('action_statistics_ad_id')->default(0);
            $table->integer('action_statistics_from_user_id')->default(0);
            $table->integer('action_statistics_to_user_id')->default(0);
            $table->string('action_statistics_action')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_action_statistics');
    }
};
