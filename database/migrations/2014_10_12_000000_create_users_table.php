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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('rand_id')->nullable();
            $table->string('name')->nullable();
            $table->string('school_name')->nullable();
            $table->string('email')->unique();
            $table->string('password');
            $table->integer('role')->comment('1=Admin')->default(1);
            $table->string('conform_password');
            $table->string('image')->nullable();
            $table->string('about')->nullable();
            $table->string('job')->nullable();
            $table->integer('otp')->nullable();
            $table->string('country')->nullable();
            $table->longText('add')->nullable();
            $table->string('phone')->nullable();
            $table->string('plan_type')->nullable();
            $table->string('start_date')->nullable();
            $table->string('end_date')->nullable();
            $table->integer('status')->comment('1 = ACTIVE , 0 = INACTIVE')->default(1);
            $table->integer('user_block')->comment('1 = ACTIVE , 0 = INACTIVE')->default(0);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
};
