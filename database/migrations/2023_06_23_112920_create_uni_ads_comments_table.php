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
        Schema::create('uni_ads_comments', function (Blueprint $table) {
            $table->integer('ads_comments_id', true);
            $table->integer('ads_comments_id_user')->default(0);
            $table->string('ads_comments_text', 5000)->nullable();
            $table->timestamp('ads_comments_date')->nullable();
            $table->integer('ads_comments_id_parent')->default(0);
            $table->integer('ads_comments_id_ad')->default(0);
            $table->integer('ads_comments_notification')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_comments');
    }
};
