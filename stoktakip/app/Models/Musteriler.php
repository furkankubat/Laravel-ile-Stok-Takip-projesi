<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Musteriler extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function iliskiliil () {
        return $this->belongsTo(Iller::class, 'il', 'id');
    }

    public function iliskiliilce () {
        return $this->belongsTo(Ilceler::class, 'ilce', 'id');
    }
}
