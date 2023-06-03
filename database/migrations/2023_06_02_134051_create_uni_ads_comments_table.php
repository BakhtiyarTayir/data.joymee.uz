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
            Schema::create('uni_ads_comments', function (Blueprint $table) {
                $table->id('ads_comments_id');
                $table->unsignedBigInteger('ads_comments_id_user')->default(0);
                $table->text('ads_comments_text')->nullable();
                $table->timestamp('ads_comments_date')->nullable();
                $table->unsignedBigInteger('ads_comments_id_parent')->default(0);
                $table->unsignedBigInteger('ads_comments_id_ad')->default(0);
                $table->unsignedTinyInteger('ads_comments_notification')->default(0);
                $table->timestamps();

                // Add foreign key constraints if necessary
                // $table->foreign('ads_comments_id_user')->references('id')->on('users');
                // $table->foreign('ads_comments_id_parent')->references('ads_comments_id')->on('uni_ads_comments');
                // $table->foreign('ads_comments_id_ad')->references('id')->on('ads');
            });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_comments');
    }
};
