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
        Schema::create('uni_blog_articles', function (Blueprint $table) {
            $table->integer('blog_articles_id', true);
            $table->string('blog_articles_title');
            $table->longText('blog_articles_text')->nullable();
            $table->timestamp('blog_articles_date_add')->nullable();
            $table->integer('blog_articles_visible')->default(1);
            $table->text('blog_articles_desc')->nullable();
            $table->integer('blog_articles_count_view')->nullable()->default(0);
            $table->string('blog_articles_image')->nullable();
            $table->string('blog_articles_alias');
            $table->integer('blog_articles_id_cat')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_blog_articles');
    }
};
