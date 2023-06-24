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
        Schema::create('uni_favorites', function (Blueprint $table) {
            $table->integer('favorites_id', true);
            $table->integer('favorites_id_ad')->default(0);
            $table->integer('favorites_from_id_user')->default(0);
            $table->integer('favorites_to_id_user')->default(0);
            $table->timestamp('favorites_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_favorites');
    }
};
