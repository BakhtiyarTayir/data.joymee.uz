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
        Schema::create('uni_services_tariffs', function (Blueprint $table) {
            $table->integer('services_tariffs_id', true);
            $table->string('services_tariffs_name')->nullable();
            $table->float('services_tariffs_price', 10, 0)->default(0);
            $table->integer('services_tariffs_days')->default(0);
            $table->string('services_tariffs_desc')->nullable();
            $table->integer('services_tariffs_status')->default(1);
            $table->text('services_tariffs_services')->nullable();
            $table->float('services_tariffs_new_price', 10, 0)->default(0);
            $table->float('services_tariffs_bonus', 10, 0)->default(0);
            $table->integer('services_tariffs_position')->default(0);
            $table->integer('services_tariffs_onetime')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_tariffs');
    }
};
