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
        Schema::create('uni_ads_import', function (Blueprint $table) {
            $table->integer('ads_import_id', true);
            $table->string('ads_import_uniq')->nullable();
            $table->string('ads_import_file')->nullable();
            $table->integer('ads_import_count')->default(0);
            $table->integer('ads_import_status')->default(0);
            $table->text('ads_import_params')->nullable();
            $table->string('ads_import_step')->nullable();
            $table->integer('ads_import_count_loaded')->default(0);
            $table->integer('ads_import_errors')->default(0);
            $table->timestamp('ads_import_date')->nullable();
            $table->integer('ads_import_status_images')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_ads_import');
    }
};
