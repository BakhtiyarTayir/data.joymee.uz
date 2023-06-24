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
        Schema::create('uni_secure_disputes', function (Blueprint $table) {
            $table->integer('secure_disputes_id', true);
            $table->integer('secure_disputes_id_secure')->default(0);
            $table->text('secure_disputes_text')->nullable();
            $table->integer('secure_disputes_status')->default(0);
            $table->timestamp('secure_disputes_date')->nullable();
            $table->integer('secure_disputes_id_user')->default(0);
            $table->text('secure_disputes_attach')->nullable();
            $table->text('secure_disputes_text_arbitr')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('uni_secure_disputes');
    }
};
