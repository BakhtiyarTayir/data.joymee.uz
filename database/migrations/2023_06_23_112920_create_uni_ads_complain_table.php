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
        Schema::create('uni_ads_complain', function (Blueprint $table) {
            $table->integer('ads_complain_id', true)->unique('id');
            $table->integer('ads_complain_id_ad')->default(0);
            $table->timestamp('ads_complain_date')->nullable();
            $table->text('ads_complain_text')->nullable();
            $table->integer('ads_complain_status')->default(0);
            $table->integer('ads_complain_from_user_id')->default(0);
            $table->integer('ads_complain_to_user_id')->default(0);
            $table->string('ads_complain_action', 10)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_complain');
    }
};
