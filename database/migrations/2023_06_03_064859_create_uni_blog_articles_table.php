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
        Schema::create('uni_blog_articles', function (Blueprint $table) {
            $table->integer('blog_articles_id')->primary();
            $table->string('blog_articles_title', 255)->charset('utf8')->nullable(false);
            $table->longText('blog_articles_text')->charset('utf8')->nullable();
            $table->timestamp('blog_articles_date_add')->nullable()->default(null);
            $table->integer('blog_articles_visible')->nullable(false)->default(1);
            $table->text('blog_articles_desc')->charset('utf8')->nullable();
            $table->integer('blog_articles_count_view')->nullable()->default(0);
            $table->string('blog_articles_image', 255)->charset('utf8')->nullable()->default(null);
            $table->string('blog_articles_alias', 255)->charset('utf8')->nullable(false);
            $table->integer('blog_articles_id_cat')->nullable(false)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_blog_articles');
    }
};
