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
        Schema::create('uni_country', function (Blueprint $table) {
            $table->unsignedBigInteger('country_id')->primary();
            $table->string('country_name', 128)->charset('utf8')->default('');
            $table->unsignedBigInteger('country_status')->default(0);
            $table->string('country_alias', 255)->charset('utf8');
            $table->string('country_lat', 30)->charset('utf8')->default('0');
            $table->string('country_lng', 30)->charset('utf8')->default('0');
            $table->text('country_desc')->charset('utf8')->nullable();
            $table->string('country_format_phone', 255)->nullable();
            $table->string('country_code_phone', 255)->nullable();
            $table->string('country_image', 255)->nullable();
            $table->string('country_declination', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_country');
    }
};
