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
        Schema::create('uni_advertising', function (Blueprint $table) {
            $table->integer('advertising_id')->primary();
            $table->string('advertising_title', 255)->charset('utf8')->nullable(false);
            $table->string('advertising_image', 255)->charset('utf8')->nullable()->default(null);
            $table->integer('advertising_visible')->nullable(false)->default(1);
            $table->text('advertising_ids_cat')->charset('utf8')->nullable();
            $table->integer('advertising_click')->nullable(false)->default(0);
            $table->integer('advertising_type_banner')->nullable(false)->default(0);
            $table->timestamp('advertising_date_start')->nullable()->default(null);
            $table->timestamp('advertising_date_end')->nullable()->default(null);
            $table->text('advertising_geo')->charset('utf8')->nullable();
            $table->string('advertising_banner_position', 100)->charset('utf8')->nullable()->default(null);
            $table->text('advertising_code_script')->charset('utf8')->nullable();
            $table->integer('advertising_index_out')->nullable(false)->default(0);
            $table->integer('advertising_out_podcat')->nullable(false)->default(0);
            $table->string('advertising_link_site', 255)->charset('utf8')->nullable()->default(null);
            $table->string('advertising_pages', 255)->charset('utf8')->nullable()->default(null);
            $table->integer('advertising_var_out')->nullable(false)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('uni_advertising');
    }
};
