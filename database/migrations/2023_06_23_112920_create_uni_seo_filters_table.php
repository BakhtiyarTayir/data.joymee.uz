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
        Schema::create('uni_seo_filters', function (Blueprint $table) {
            $table->integer('seo_filters_id', true);
            $table->text('seo_filters_alias')->nullable();
            $table->string('seo_filters_title')->nullable();
            $table->text('seo_filters_desc')->nullable();
            $table->text('seo_filters_text')->nullable();
            $table->text('seo_filters_params')->nullable();
            $table->string('seo_filters_alias_category')->nullable();
            $table->string('seo_filters_alias_geo')->nullable();
            $table->integer('seo_filters_count_view')->default(0);
            $table->string('seo_filters_h1')->nullable();
            $table->string('seo_filters_name')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_seo_filters');
    }
};
