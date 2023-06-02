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
        Schema::create('uni_action_statistics', function (Blueprint $table) {
            $table->id('action_statistics_id');
            $table->timestamp('action_statistics_date')->nullable();
            $table->unsignedBigInteger('action_statistics_ad_id')->default(0);
            $table->unsignedBigInteger('action_statistics_from_user_id')->default(0);
            $table->unsignedBigInteger('action_statistics_to_user_id')->default(0);
            $table->string('action_statistics_action')->nullable();
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('action_statistics_ad_id')->references('id')->on('ads');
            // $table->foreign('action_statistics_from_user_id')->references('id')->on('users');
            // $table->foreign('action_statistics_to_user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_action_statistics');
    }
};
