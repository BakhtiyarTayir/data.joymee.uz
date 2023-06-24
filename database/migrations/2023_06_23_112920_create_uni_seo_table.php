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
        Schema::create('uni_seo', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('page', 50);
            $table->text('meta_title')->nullable();
            $table->text('meta_desc')->nullable();
            $table->text('text')->nullable();
            $table->text('h1')->nullable();
            $table->string('lang_iso', 10)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_seo');
    }
};
