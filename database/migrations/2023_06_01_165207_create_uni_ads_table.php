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
        Schema::create('uni_ads', function (Blueprint $table) {
            $table->id('ads_id');
            $table->text('ads_title')->nullable();
            $table->text('ads_alias')->nullable();
            $table->text('ads_text')->nullable();
            $table->unsignedBiginteger('ads_id_cat')->default(0);
            $table->timestamp('ads_datetime_add')->index()->nullable();
            $table->timestamp('ads_datetime_view')->nullable();
            $table->integer('ads_id_user')->index()->default(0);
            $table->text('ads_images')->nullable();
            $table->float('ads_price')->default(0);
            $table->string('ads_address')->nullable();
            $table->string('ads_latitude')->nullable();
            $table->string('ads_longitude')->nullable();
            $table->string('ads_metro_ids')->nullable();
            $table->timestamp('ads_period_publication')->nullable()->index();
            $table->integer('ads_city_id')->index()->default(0);
            $table->integer('ads_status')->index()->default(0);
            $table->integer('ads_region_id')->index()->default(0);
            $table->integer('ads_country_id')->index()->default(0);
            $table->string('ads_note')->nullable();
            $table->integer('ads_count_display')->default(0);
            $table->string('ads_currency')->nullable();
            $table->integer('ads_period_day')->default(0);
            $table->timestamp('ads_update')->nullable();
            $table->integer('ads_sorting')->default(0);
            $table->integer('ads_auction')->default(0);
            $table->timestamp('ads_auction_duration')->nullable();
            $table->float('ads_auction_price_sell')->default(0);
            $table->integer('ads_auction_day')->default(1);
            $table->string('ads_area_ids')->nullable();
            $table->string('ads_id_import')->nullable()->index();
            $table->text('ads_import_images')->nullable();
            $table->string('ads_video')->nullable();
            $table->string('ads_tour')->nullable();
            $table->integer('ads_vip')->default(0);
            $table->integer('ads_auto_renewal')->default(0);
            $table->integer('ads_online_view')->default(0);
            $table->float('ads_price_old')->default(0);
            $table->text('ads_filter_tags')->nullable();
            $table->integer('ads_price_free')->default(0);
            $table->integer('ads_available')->default(0);
            $table->integer('ads_available_unlimitedly')->default(0);
            $table->integer('ads_booking')->default(0);
            $table->integer('ads_price_measure')->nullable();
            $table->integer('ads_price_from')->default(0);
            $table->text('ads_booking_additional_services')->nullable();
            $table->integer('ads_booking_prepayment_percent')->default(0);
            $table->integer('ads_booking_max_guests')->default(0);
            $table->integer('ads_booking_min_days')->default(0);
            $table->integer('ads_booking_max_days')->default(0);
            $table->integer('ads_booking_available')->default(0);
            $table->integer('ads_booking_available_unlimitedly')->default(0);
            $table->text('ads_electron_product_links')->nullable();
            $table->text('ads_electron_product_text')->nullable();
            $table->integer('ads_delivery_status')->default(0);
            $table->integer('ads_delivery_weight')->default(0);
            $table->timestamps();

            $table->index('ads_id_cat', 'ads_category_idx');
            $table->foreign('ads_id_cat', 'ads_category_fk')->on('uni_category_board')->references('category_board_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_ads');
    }
};
