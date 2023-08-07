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
        Schema::create('urunlers', function (Blueprint $table) {
            $table->id();
            $table->string('urun_kodu');
            $table->string('urun_adi');
            $table->string('urun_stok');
            $table->string('urun_alis_fiyat');
            $table->string('urun_satis_fiyat');
            $table->string('urun_aciklama');
            $table->string('urun_resim');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('urunlers');
    }
};
