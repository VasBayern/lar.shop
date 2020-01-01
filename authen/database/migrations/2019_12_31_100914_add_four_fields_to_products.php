<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFourFieldsToProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('shop_products', function (Blueprint $table) {
            //
            $table->string('ship_info');
            $table->text('addition_information');
            $table->text('review');
            $table->text('help');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('shop_products', function (Blueprint $table) {
            //
            $table->dropColumn('ship_info');
            $table->dropColumn('addition_information');
            $table->dropColumn('review');
            $table->dropColumn('help');

        });
    }
}
