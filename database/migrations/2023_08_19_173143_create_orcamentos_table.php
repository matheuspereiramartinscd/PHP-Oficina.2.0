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
        Schema::create('orcamentos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('cliente');
            $table->string('vendedor');
            $table->string('descricao');
            $table->date('data'); 
            $table->string('hora');          
            $table->string('valor');       
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orcamentos');
    }
};
