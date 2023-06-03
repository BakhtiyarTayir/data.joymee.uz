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
        Schema::create('uni_ads_keywords_users', function (Blueprint $table) {
            $table->id('ads_keywords_users_id');
            $table->string('ads_keywords_users_text')->nullable();
            $table->string('ads_keywords_users_ip')->nullable();
            $table->unsignedBigInteger('ads_keywords_users_count_view')->default(0);
            $table->timestamp('ads_keywords_users_date')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_keywords_users');
    }
};
