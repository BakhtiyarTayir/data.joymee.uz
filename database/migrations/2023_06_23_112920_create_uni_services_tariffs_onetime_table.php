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
        Schema::create('uni_services_tariffs_onetime', function (Blueprint $table) {
            $table->integer('services_tariffs_onetime_id', true);
            $table->integer('services_tariffs_onetime_user_id')->default(0);
            $table->integer('services_tariffs_onetime_tariff_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_tariffs_onetime');
    }
};
