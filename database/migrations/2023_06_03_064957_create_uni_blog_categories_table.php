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
        Schema::create('uni_blog_category', function (Blueprint $table) {
            $table->integer('blog_category_id')->primary();
            $table->string('blog_category_name', 255)->charset('utf8')->nullable(false);
            $table->integer('blog_category_visible')->nullable(false)->default(1);
            $table->string('blog_category_title', 255)->charset('utf8')->nullable()->default(null);
            $table->integer('blog_category_id_position')->nullable(false)->default(0);
            $table->text('blog_category_desc')->charset('utf8')->nullable();
            $table->integer('blog_category_id_parent')->nullable(false)->default(0);
            $table->string('blog_category_image', 150)->charset('utf8')->nullable()->default(null);
            $table->text('blog_category_text')->charset('utf8')->nullable();
            $table->string('blog_category_alias', 255)->charset('utf8')->nullable(false);
            $table->string('blog_category_h1', 255)->nullable()->default(null);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_blog_category');
    }
};
