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
        Schema::create('musterilers', function (Blueprint $table) {
            $table->id();
            $table->string('adi')->nullable();
            $table->string('soyadi')->nullable();
            $table->string('email')->nullable();
            $table->string('tc')->nullable();
            $table->string('telefon')->nullable();
            $table->text('adres')->nullable();
            $table->string('il')->nullable();
            $table->string('ilce')->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('musterilers');
    }
};
