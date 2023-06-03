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
        Schema::create('uni_crontab', function (Blueprint $table) {
            $table->integer('crontab_id')->primary();
            $table->string('crontab_name', 255)->nullable();
            $table->integer('crontab_time_count')->default(0);
            $table->integer('crontab_update_count')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_crontab');
    }
};
