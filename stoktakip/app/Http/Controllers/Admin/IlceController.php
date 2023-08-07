<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Ilceler;
use Illuminate\Http\Request;

class IlceController extends Controller
{
    public function getIlceler($il_id)
    {
        // $il_id'ye göre ilçe verilerini veritabanından alıyoruz
        $ilceler = Ilceler::where('il_id', $il_id)->get();

        // JSON formatında ilçe verilerini döndürün
        return response()->json($ilceler);
    }
}
