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
        Schema::create('uni_privileges', function (Blueprint $table) {
            $table->id();
            $table->string('main_title', 100)->charset('utf8')->nullable(false);
            $table->string('sub_title', 100)->charset('utf8')->nullable(false);
            $table->string('value', 50)->charset('utf8')->nullable(false);
            $table->string('uid', 50)->charset('utf8')->nullable(false);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_privileges');
    }
};
