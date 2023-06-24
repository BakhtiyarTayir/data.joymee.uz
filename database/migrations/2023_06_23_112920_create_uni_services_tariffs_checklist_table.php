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
        Schema::create('uni_services_tariffs_checklist', function (Blueprint $table) {
            $table->integer('services_tariffs_checklist_id', true);
            $table->string('services_tariffs_checklist_name')->nullable();
            $table->string('services_tariffs_checklist_desc')->nullable();
            $table->string('services_tariffs_checklist_alias')->nullable();
            $table->string('services_tariffs_checklist_uid')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_services_tariffs_checklist');
    }
};
