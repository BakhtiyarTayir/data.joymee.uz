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
        Schema::create('uni_clients_reviews', function (Blueprint $table) {
            $table->id('clients_reviews_id');
            $table->unsignedBigInteger('clients_reviews_id_user')->default(0);
            $table->text('clients_reviews_text')->charset('utf8');
            $table->timestamp('clients_reviews_date')->nullable();
            $table->unsignedBigInteger('clients_reviews_from_id_user');
            $table->unsignedTinyInteger('clients_reviews_rating')->default(1);
            $table->unsignedBigInteger('clients_reviews_status')->default(1);
            $table->unsignedBigInteger('clients_reviews_id_ad')->default(0);
            $table->unsignedTinyInteger('clients_reviews_status_result')->default(1);
            $table->string('clients_reviews_files', 255)->nullable();
            $table->unsignedBigInteger('clients_reviews_id_parent')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clients_reviews');
    }
};
