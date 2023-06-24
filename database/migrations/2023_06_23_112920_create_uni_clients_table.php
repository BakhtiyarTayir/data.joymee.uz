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
        Schema::create('uni_clients', function (Blueprint $table) {
            $table->integer('clients_id', true);
            $table->string('clients_pass')->nullable();
            $table->string('clients_email', 100)->nullable();
            $table->timestamp('clients_datetime_add')->nullable();
            $table->string('clients_social_identity')->nullable();
            $table->string('clients_ip', 50)->nullable();
            $table->integer('clients_status')->default(1)->index('clients_status');
            $table->string('clients_avatar', 500)->nullable();
            $table->string('clients_phone', 30)->nullable();
            $table->timestamp('clients_datetime_view')->nullable();
            $table->string('clients_name', 50)->nullable();
            $table->string('clients_surname', 50)->nullable();
            $table->float('clients_balance', 10, 0)->default(0);
            $table->string('clients_type_person', 15)->default('user');
            $table->string('clients_name_company', 30)->nullable();
            $table->integer('clients_city_id')->default(0);
            $table->text('clients_additional_phones')->nullable();
            $table->string('clients_id_hash', 35)->nullable();
            $table->string('clients_note')->nullable();
            $table->text('clients_notifications')->nullable();
            $table->string('clients_score')->nullable();
            $table->integer('clients_secure')->default(1);
            $table->integer('clients_comments')->default(1);
            $table->string('clients_id_import')->nullable();
            $table->integer('clients_view_phone')->default(1);
            $table->integer('clients_first_ad_publication')->default(0);
            $table->string('clients_score_type')->nullable();
            $table->integer('clients_tariff_id')->default(0);
            $table->integer('clients_tariff_autorenewal')->default(1);
            $table->string('clients_cookie_token')->nullable();
            $table->string('clients_score_booking')->nullable();
            $table->string('clients_note_status')->nullable();
            $table->string('clients_card_id')->nullable();
            $table->string('clients_patronymic')->nullable();
            $table->integer('clients_delivery_status')->nullable()->default(0);
            $table->string('clients_delivery_id_point_send')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_clients');
    }
};
