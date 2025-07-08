<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
        {
            Schema::table('answers', function (Blueprint $table) {
                if (!Schema::hasColumn('answers', 'type')) {
                    $table->string('type')->nullable()->after('title');
                }
                if (!Schema::hasColumn('answers', 'file_path')) {
                    $table->string('file_path')->nullable()->after('type');
                }
            });
        }


    public function down()
        {
            Schema::table('answers', function (Blueprint $table) {
                $table->dropColumn(['type', 'file_path']);
            });
        }

};
