<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Musteriler;
use App\Models\Satislar;
use App\Models\Urunler;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class SatislarController extends Controller
{
    public function SatislarListe()
    {
        $satislar = Satislar::latest()->get();
        return view('admin.satislar.satislar_liste', compact('satislar'));

    }

    public function SatisYap()
    {
        $musterigoster = Musteriler::orderBy('adi', 'ASC')->get();
        $urungoster = Urunler::orderBy('urun_kodu', 'ASC')->get();

        return view('admin.satislar.satis_yap', compact('musterigoster', 'urungoster'));
    }

    public function SatisYapForm(Request $request)
    {
        // Formdan gelen ürün_id'leri bir dizi olarak alıyoruz.
        $urunler = $request->input('urun_id');

        // Müşteri bilgisini alıyoruz
        $musteri_id = $request->input('musteri_id');


        // Her bir ürün için satış işlemleri yapıyoruz.
        foreach ($urunler as $urun_id) {
            // Formdan gelen urun_id ile urunlers tablosundaki ilgili id'nin bütün sütunlarına ulaşabiliyoruz.
            $urungoster = DB::table('urunlers')->where('id', $urun_id)->first();

            if (!$urungoster) {
                // Eğer ürün bulunamazsa, hata mesajı veya yönlendirme yapıyoruz.
                return redirect()->back()->with('error', 'Ürün bulunamadı.');
            }

            // Ürünün kar/zarar hesabını yapalım
            $urunkarzarar = (($request->satis_fiyati[$urun_id]) * ($request->urun_adedi[$urun_id])) - (($urungoster->urun_alis_fiyat) * ($request->urun_adedi[$urun_id]));

            // Satışları kaydedelim
            Satislar::insert([
                'musteri_id' => $musteri_id,
                'urun_id' => $urun_id,
                'satis_fiyati' => $request->satis_fiyati[$urun_id],
                'urun_adedi' => $request->urun_adedi[$urun_id],
                'kar_zarar' => $urunkarzarar,
                'created_at' => Carbon::now()
            ]);

            // Ürün stoklarını güncelleyelim
            Urunler::where('id', $urun_id)->update([
                'urun_stok' => ($urungoster->urun_stok) - ($request->urun_adedi[$urun_id])
            ]);
        }

        // Bildirim
        $mesaj = [
            'bildirim' => 'Satış başarılı.',
            'alert-type' => 'success'
        ];

        // Bildirimi listele sayfasına gönderiyoruz
        return redirect()->route('satislar.liste')->with($mesaj);
    }


}
