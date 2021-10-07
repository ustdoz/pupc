<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddNewColumnsOnDetaineesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('detainees', function(Blueprint $table) {
            $table->char('gender', 20)->nullable()->after('last_name');
            $table->text('violation')->nullable()->after('gender');

            // RELEASE COLUMNS
            // blotter entry number
            // personnel in charge of release
            // release order date from the court
            // date of updating of release in e-rouge
            // remarks / autority / reason of release
            $table->string('released_blotter_number')->nullable()->after('released_date');
            // must be a foreign key to a setting for jailer list
            $table->string('released_personnel_incharge')->nullable()->after('released_blotter_number');
            $table->date('released_date_court')->nullable()->after('released_personnel_incharge');
            $table->date('released_date_erogue')->nullable()->after('released_date_court');
            $table->text('released_remarks')->nullable()->after('released_date_erogue');
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
            $table->dropColumn(['gender', 'violation']);

            $table->dropColumn(['released_blotter_number', 'released_personnel_incharge', 'released_date_court', 'released_date_erogue', 'released_remarks']);
        });

        // Schema::dropIfExists('detainees'); 
    }
}
