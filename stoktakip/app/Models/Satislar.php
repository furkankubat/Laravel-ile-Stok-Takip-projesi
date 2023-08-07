<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satislar extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function iliskimusteri (){
        //Tablolar arası ilişki
        return  $this->belongsTo(Musteriler::class, 'musteri_id', 'id');
    }
    public function iliskiurun (){
        //Tablolar arası ilişki
        return  $this->belongsTo(Urunler::class, 'urun_id', 'id');
    }
}
