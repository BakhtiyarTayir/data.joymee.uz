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
        Schema::create('uni_ads_complain', function (Blueprint $table) {
            $table->id('ads_complain_id');
            $table->unsignedBigInteger('ads_complain_id_ad')->default(0);
            $table->timestamp('ads_complain_date')->nullable();
            $table->text('ads_complain_text')->charset('utf8')->nullable();
            $table->unsignedTinyInteger('ads_complain_status')->default(0);
            $table->unsignedBigInteger('ads_complain_from_user_id')->default(0);
            $table->unsignedBigInteger('ads_complain_to_user_id')->default(0);
            $table->string('ads_complain_action')->nullable();
            $table->timestamps();

            // Add foreign key constraints if necessary
            // $table->foreign('ads_complain_id_ad')->references('id')->on('ads');
            // $table->foreign('ads_complain_from_user_id')->references('id')->on('users');
            // $table->foreign('ads_complain_to_user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_complain');
    }
};
