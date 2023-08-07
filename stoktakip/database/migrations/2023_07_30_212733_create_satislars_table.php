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
        Schema::create('satislars', function (Blueprint $table) {
            $table->id();
            $table->integer('musteri_id');
            $table->integer('urun_id');
            $table->integer('satis_fiyati');
            $table->integer('urun_adedi');
            $table->integer('kar_zarar');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('satislars');
    }
};
