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
        Schema::create('uni_crontab', function (Blueprint $table) {
            $table->integer('crontab_id', true);
            $table->string('crontab_name')->nullable();
            $table->integer('crontab_time_count')->default(0);
            $table->integer('crontab_update_count')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_crontab');
    }
};
