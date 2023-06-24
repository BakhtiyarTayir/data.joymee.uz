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
        Schema::create('uni_promo_pages', function (Blueprint $table) {
            $table->integer('promo_pages_id', true);
            $table->string('promo_pages_title')->nullable();
            $table->string('promo_pages_desc')->nullable();
            $table->string('promo_pages_alias')->nullable();
            $table->mediumText('promo_pages_html_edit')->nullable();
            $table->mediumText('promo_pages_html_public')->nullable();
            $table->integer('promo_pages_visible')->default(1);
            $table->integer('promo_pages_count_view')->default(0);
            $table->integer('promo_pages_logotip')->default(0);
            $table->string('promo_pages_color')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_promo_pages');
    }
};
