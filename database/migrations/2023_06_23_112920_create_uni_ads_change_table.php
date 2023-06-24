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
        Schema::create('uni_ads_change', function (Blueprint $table) {
            $table->integer('ads_change_id', true);
            $table->integer('ads_change_id_ad')->default(0);
            $table->timestamp('ads_change_date')->nullable();
            $table->integer('ads_change_status')->default(0);
            $table->string('ads_change_action')->nullable();
            $table->string('ads_change_note')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_change');
    }
};
