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
        Schema::create('uni_metrics', function (Blueprint $table) {
            $table->id();
            $table->string('ip', 255)->nullable();
            $table->timestamp('date')->nullable();
            $table->string('referrer', 255)->nullable();
            $table->text('user_agent')->nullable();
            $table->mediumText('route')->nullable();
            $table->text('entry_point')->nullable();
            $table->integer('id_user')->default(0);
            $table->string('view_page_link', 255)->nullable();
            $table->string('view_page_title', 255)->nullable();
            $table->timestamp('date_view')->nullable();
            $table->integer('unique_visit')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_metrics');
    }
};
