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
        Schema::create('uni_pages', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255)->charset('utf8')->nullable(false);
            $table->string('alias', 255)->charset('utf8')->nullable(false);
            $table->string('title', 255)->charset('utf8')->nullable();
            $table->mediumText('text')->charset('utf8')->nullable();
            $table->string('seo_text', 255)->charset('utf8')->nullable();
            $table->integer('visible')->default(1);
            $table->integer('id_position')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_pages');
    }
};
