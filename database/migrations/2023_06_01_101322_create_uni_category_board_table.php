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
        Schema::create('uni_category_board', function (Blueprint $table) {
            $table->id('category_board_id');
            $table->string('category_board_name');
            $table->integer('category_board_visible');
            $table->string('category_board_title');
            $table->integer('category_board_id_position');
            $table->text('category_board_text');
            $table->integer('category_board_id_parent');
            $table->string('category_board_image');
            $table->text('category_board_description');
            $table->string('category_board_alias');
            $table->integer('category_board_count_view');
            $table->timestamp('category_board_date_view');
            $table->float('category_board_price');
            $table->integer('category_board_count_free');
            $table->integer('category_board_status_paid');
            $table->integer('category_board_display_price');
            $table->integer('category_board_auction');
            $table->integer('category_board_secure');
            $table->string('category_board_h1');
            $table->integer('category_board_auto_title');
            $table->string('category_board_auto_title_template');
            $table->integer('category_board_show_index');
            $table->integer('category_board_marketplace');
            $table->integer('category_board_booking');
            $table->integer('category_board_booking_variant');
            $table->integer('category_board_variant_price_id');
            $table->text('category_board_measures_price');
            $table->text('category_board_rules');
            $table->integer('category_board_online_view');
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
