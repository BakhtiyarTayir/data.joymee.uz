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
        Schema::create('uni_services_tariffs_bonus', function (Blueprint $table) {
            $table->integer('services_tariffs_bonus_id', true);
            $table->integer('services_tariffs_bonus_user_id')->default(0);
            $table->integer('services_tariffs_bonus_tariff_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_tariffs_bonus');
    }
};
