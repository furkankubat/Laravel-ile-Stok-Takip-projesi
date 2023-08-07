<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Ilceler;
use App\Models\Iller;
use App\Models\Musteriler;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class MusterilerController extends Controller
{
    public function MusterilerListe()
    {
        $musteriler = Musteriler::latest()->get();
        return view('admin.musteriler.musteriler_liste', compact('musteriler'));
    }

    public function MusterilerEkle()
    {
        $iller = Iller::latest()->get();
        $ilceler = Ilceler::latest()->get();

        return view('admin.musteriler.musteriler_ekle', compact('iller', 'ilceler'));
    }

    public function MusterilerEkleForm(Request $request)
    {
        Musteriler::insert([
            'adi' => $request->adi,
            'soyadi' => $request->soyadi,
            'email' => $request->email,
            'tc' => $request->tc,
            'telefon' => $request->telefon,
            'adres' => $request->adres,
            'il' => $request->il,
            'ilce' => $request->ilce,
            'created_at' => Carbon::now()
        ]);

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Kayıt başarılı...',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('musteriler.liste')->with($mesaj);
    }

    public function MusterilerDuzenle($id)
    {
        $iller = Iller::latest()->get();
        $ilceler = Ilceler::latest()->get();
        $musterilerDuzenle = Musteriler::findOrFail($id);
        return view('admin.musteriler.musteriler_duzenle', compact('musterilerDuzenle', 'iller', 'ilceler'));
    }

    public function MusterilerGuncelleForm(Request $request)
    {
        $musteriId = $request->id;
        Musteriler::findOrFail($musteriId)->update([
            'adi' => $request->adi,
            'soyadi' => $request->soyadi,
            'email' => $request->email,
            'tc' => $request->tc,
            'telefon' => $request->telefon,
            'adres' => $request->adres,
            'il' => $request->il,
            'ilce' => $request->ilce
        ]);

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Güncelleme başarılı...',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('musteriler.liste')->with($mesaj);
    }

    public function MusterilerSil($id)
    {
        Musteriler::findOrFail($id)->delete();

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);

    }

}
