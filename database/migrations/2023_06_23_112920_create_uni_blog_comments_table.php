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
        Schema::create('uni_blog_comments', function (Blueprint $table) {
            $table->integer('blog_comments_id', true);
            $table->integer('blog_comments_id_article')->default(0);
            $table->integer('blog_comments_id_user')->default(0);
            $table->timestamp('blog_comments_date')->nullable();
            $table->string('blog_comments_text', 5000)->nullable();
            $table->integer('blog_comments_id_parent')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_blog_comments');
    }
};
