<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRepilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('repiles', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('pid')->comment('帖子ID');
            $table->integer('uid')->comment('留言者ID');
            $table->integer('cid')->comment('被回复留言的ID');
            $table->integer('ruid')->comment('被回复者的ID');
            $table->text('content');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('repiles');
    }
}
