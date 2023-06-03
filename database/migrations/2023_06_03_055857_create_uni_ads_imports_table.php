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
        Schema::create('uni_ads_import', function (Blueprint $table) {
            $table->id('ads_import_id');
            $table->string('ads_import_uniq')->nullable();
            $table->string('ads_import_file')->nullable();
            $table->unsignedBigInteger('ads_import_count')->default(0);
            $table->unsignedBigInteger('ads_import_status')->default(0);
            $table->text('ads_import_params')->nullable();
            $table->string('ads_import_step')->nullable();
            $table->unsignedBigInteger('ads_import_count_loaded')->default(0);
            $table->unsignedBigInteger('ads_import_errors')->default(0);
            $table->timestamp('ads_import_date')->nullable();
            $table->unsignedTinyInteger('ads_import_status_images')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads_import');
    }
};
