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
        Schema::create('uni_category_boards', function (Blueprint $table) {
            $table->id('category_board_id');
            $table->string('category_board_name')->nullable();
            $table->integer('category_board_visible')->default(1);
            $table->string('category_board_title')->nullable();
            $table->integer('category_board_id_position')->default(0);
            $table->text('category_board_text')->nullable();
            $table->integer('category_board_id_parent')->default(0);
            $table->string('category_board_image')->nullable();
            $table->text('category_board_description')->nullable();
            $table->string('category_board_alias');
            $table->integer('category_board_count_view')->default(0);
            $table->timestamp('category_board_date_view')->nullable();
            $table->float('category_board_price')->default(0);
            $table->integer('category_board_count_free')->default(0);
            $table->integer('category_board_status_paid')->default(0);
            $table->integer('category_board_display_price')->default(1);
            $table->integer('category_board_auction')->default(0);
            $table->integer('category_board_secure')->default(0);
            $table->string('category_board_h1')->nullable();
            $table->integer('category_board_auto_title')->default(0);
            $table->string('category_board_auto_title_template')->nullable();
            $table->integer('category_board_show_index')->default(0);
            $table->integer('category_board_marketplace')->default(0);
            $table->integer('category_board_booking')->default(0);
            $table->integer('category_board_booking_variant')->default(0);
            $table->integer('category_board_variant_price_id')->default(0);
            $table->text('category_board_measures_price')->nullable();
            $table->text('category_board_rules')->nullable();
            $table->integer('category_board_online_view')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_category_boards');
    }
};
