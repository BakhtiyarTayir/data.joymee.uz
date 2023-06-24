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
        Schema::create('uni_pages', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name');
            $table->string('alias');
            $table->string('title')->nullable();
            $table->mediumText('text')->nullable();
            $table->string('seo_text')->nullable();
            $table->integer('visible')->default(1);
            $table->integer('id_position')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_pages');
    }
};
