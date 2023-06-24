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
        Schema::create('uni_ads_keywords_users', function (Blueprint $table) {
            $table->integer('ads_keywords_users_id', true);
            $table->string('ads_keywords_users_text')->nullable();
            $table->string('ads_keywords_users_ip')->nullable();
            $table->integer('ads_keywords_users_count_view')->default(0);
            $table->timestamp('ads_keywords_users_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_keywords_users');
    }
};
