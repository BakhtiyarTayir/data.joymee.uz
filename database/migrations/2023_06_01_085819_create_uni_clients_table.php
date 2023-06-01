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
        Schema::create('uni_clients', function (Blueprint $table) {
            $table->id('clients_id');
            $table->string('clients_pass')->nullable();
            $table->string('clients_email')->nullable();
            $table->timestamp('clients_datetime_add')->nullable();
            $table->string('clients_social_identity')->nullable();
            $table->string('clients_ip')->nullable();
            $table->integer('clients_status')->default(1)->index();
            $table->string('clients_avatar')->nullable();
            $table->string('clients_phone')->nullable();
            $table->timestamp('clients_datetime_view')->nullable();
            $table->string('clients_name')->nullable();
            $table->string('clients_surname')->nullable();
            $table->float('clients_balance')->default(0);
            $table->string('clients_type_person')->default('user');
            $table->string('clients_name_company')->nullable();
            $table->integer('clients_city_id')->default(0);
            $table->string('clients_additional_phones')->nullable();
            $table->string('clients_id_hash')->nullable();
            $table->string('clients_note')->nullable();
            $table->integer('clients_notifications')->nullable();
            $table->integer('clients_score')->nullable();
            $table->string('clients_secure')->default(1);
            $table->integer('clients_comments')->default(1);
            $table->integer('clients_id_import')->nullable();
            $table->string('clients_view_phone')->default(1);
            $table->integer('clients_first_ad_publication')->default(0);
            $table->integer('clients_score_type')->nullable();
            $table->string('clients_tariff_id')->default(0);
            $table->string('clients_tariff_autorenewal')->default(1);
            $table->string('clients_cookie_token')->nullable();
            $table->string('clients_score_booking')->nullable();
            $table->string('clients_note_status')->nullable();
            $table->integer('clients_card_id')->nullable();
            $table->string('clients_patronymic')->nullable();
            $table->integer('clients_delivery_status')->default(0);
            $table->string('clients_delivery_id_point_send')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_clents');
    }
};
