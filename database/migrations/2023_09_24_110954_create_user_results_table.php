<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('user_results', function (Blueprint $table) {
            $table->id();
            $table->smallInteger('question_ans_id');
            $table->smallInteger('user_id');
            $table->enum('result',['true','false'])->default('false');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_results');
    }
};
