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
        Schema::create('uni_admin', function (Blueprint $table) {
            $table->id();
            $table->string('pass')->nullable();
            $table->string('fio')->nullable();
            $table->string('image')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->integer('role')->default(1);
            $table->timestamp('datetime_view')->nullable();
            $table->boolean('main_admin')->default(false);
            $table->text('privileges')->nullable();
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_admin');
    }
};
