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
        Schema::create('uni_blog_comments', function (Blueprint $table) {
            $table->integer('blog_comments_id')->primary();
            $table->integer('blog_comments_id_article')->nullable(false)->default(0);
            $table->integer('blog_comments_id_user')->nullable(false)->default(0);
            $table->timestamp('blog_comments_date')->nullable();
            $table->string('blog_comments_text', 5000)->nullable();
            $table->integer('blog_comments_id_parent')->nullable(false)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_blog_comments');
    }
};
