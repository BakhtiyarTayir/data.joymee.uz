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
        Schema::create('uni_services_ads', function (Blueprint $table) {
            $table->integer('services_ads_id', true);
            $table->string('services_ads_name')->nullable();
            $table->float('services_ads_price', 10, 0)->default(0);
            $table->float('services_ads_new_price', 10, 0)->default(0);
            $table->integer('services_ads_count_day')->default(0);
            $table->text('services_ads_text')->nullable();
            $table->integer('services_ads_uid')->default(0);
            $table->string('services_ads_image', 100)->nullable();
            $table->integer('services_ads_variant')->default(1);
            $table->integer('services_ads_id_position')->nullable()->default(0);
            $table->integer('services_ads_visible')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_ads');
    }
};
