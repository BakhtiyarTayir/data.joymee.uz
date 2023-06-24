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
        Schema::create('uni_metrics', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('ip')->nullable();
            $table->timestamp('date')->nullable();
            $table->string('referrer')->nullable();
            $table->text('user_agent')->nullable();
            $table->mediumText('route')->nullable();
            $table->text('entry_point')->nullable();
            $table->integer('id_user')->default(0);
            $table->string('view_page_link')->nullable();
            $table->string('view_page_title')->nullable();
            $table->timestamp('date_view')->nullable();
            $table->integer('unique_visit')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_metrics');
    }
};
