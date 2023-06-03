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
        Schema::create('uni_clients_hash_email', function (Blueprint $table) {
            $table->integer('clients_hash_email_id')->primary();
            $table->integer('clients_hash_email_id_user')->default(0);
            $table->string('clients_hash_email_email')->nullable();
            $table->string('clients_hash_email_hash')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_hash_email');
    }
};
