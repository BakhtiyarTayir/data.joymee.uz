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
        Schema::create('uni_advertising', function (Blueprint $table) {
            $table->integer('advertising_id', true);
            $table->string('advertising_title');
            $table->string('advertising_image')->nullable();
            $table->integer('advertising_visible')->default(1);
            $table->text('advertising_ids_cat')->nullable();
            $table->integer('advertising_click')->default(0);
            $table->integer('advertising_type_banner')->default(0);
            $table->timestamp('advertising_date_start')->nullable();
            $table->timestamp('advertising_date_end')->nullable();
            $table->text('advertising_geo')->nullable();
            $table->string('advertising_banner_position', 100)->nullable();
            $table->text('advertising_code_script')->nullable();
            $table->integer('advertising_index_out')->default(0);
            $table->integer('advertising_out_podcat')->default(0);
            $table->string('advertising_link_site')->nullable();
            $table->string('advertising_pages')->nullable();
            $table->integer('advertising_var_out')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_advertising');
    }
};
