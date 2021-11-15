<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCommitmentDateToDetaineesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('detainees', function (Blueprint $table) {
            $table->date('commitment_date')->nullable()->after('detained_date');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('detainees', function (Blueprint $table) {
            $table->dropColumn(['commitment_date']);
        });
    }
}
