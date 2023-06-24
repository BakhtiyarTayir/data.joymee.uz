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
        Schema::create('uni_blog_category', function (Blueprint $table) {
            $table->integer('blog_category_id', true);
            $table->string('blog_category_name');
            $table->integer('blog_category_visible')->default(1);
            $table->string('blog_category_title')->nullable();
            $table->integer('blog_category_id_position')->default(0);
            $table->text('blog_category_desc')->nullable();
            $table->integer('blog_category_id_parent')->default(0);
            $table->string('blog_category_image', 150)->nullable();
            $table->text('blog_category_text')->nullable();
            $table->string('blog_category_alias');
            $table->string('blog_category_h1')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_blog_category');
    }
};
