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
        Schema::create('jailers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });

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
            // $table->string('released_personnel_incharge')->nullable()->after('released_blotter_number');
            $table->integer('jailer_id')->nullable()->unsigned()->after('released_blotter_number');
            $table->date('released_date_court')->nullable()->after('jailer_id');
            $table->date('released_date_erogue')->nullable()->after('released_date_court');
            $table->text('remarks')->nullable()->after('released_date_erogue');

            // FOREIGN KEYS
            $table->foreign('jailer_id')->references('id')->on('jailers');
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
            // FOREIGN KEYS
            $table->dropForeign(['jailer_id']);

            $table->dropColumn(['gender', 'violation']);
            $table->dropColumn(['released_blotter_number', 'jailer_id', 'released_date_court', 'released_date_erogue', 'remarks']);
        });

        Schema::dropIfExists('jailers');
    }
}
