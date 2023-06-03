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
        Schema::create('uni_ads_views', function (Blueprint $table) {
            $table->id('ads_views_id');
            $table->unsignedBigInteger('ads_views_id_ad')->default(0);
            $table->timestamp('ads_views_date')->nullable();
            $table->unsignedBigInteger('ads_views_id_user')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_views');
    }
};
