<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Urunler;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Carbon;

class UrunlerController extends Controller
{
    public function UrunlerListe()
    {
        $urunler = Urunler::latest()->get();
        $toplamGider = Urunler::sum('urun_alis_fiyat');
        return view('admin.urunler.urunler_liste', compact('urunler', 'toplamGider'));
    }

    public function UrunlerEkle()
    {
        return view('admin.urunler.urunler_ekle');
    }

    public function UrunlerEkleForm(Request $request)
    {

        if ($request->file('urun_resim')) {
            $resim = $request->file('urun_resim');
            $resimadi = hexdec(uniqid()) . '.' . $resim->getClientOriginalExtension();

            Image::make($resim)->resize(650, 720)->save('upload/urunler/' . $resimadi);
            $resim_kaydet = 'upload/urunler/' . $resimadi;

            Urunler::insert([
                'urun_kodu' => $request->urun_kodu,
                'urun_adi' => $request->urun_adi,
                'urun_stok' => $request->urun_stok,
                'urun_alis_fiyat' => $request->urun_alis_fiyat,
                'urun_satis_fiyat' => $request->urun_satis_fiyat,
                'urun_aciklama' => $request->urun_aciklama,
                'urun_resim' => $resim_kaydet,
                'created_at' => Carbon::now()
            ]);

            // Bildirim
            $mesaj = array(
                'bildirim' => 'Resim ile yükleme başarılı.',
                'alert-type' => 'success'
            );
            //Bildirim

            return Redirect()->route('urunler.liste')->with($mesaj);
        } else {
            Urunler::insert([
                'urun_kodu' => $request->urun_kodu,
                'urun_adi' => $request->urun_adi,
                'urun_stok' => $request->urun_stok,
                'urun_alis_fiyat' => $request->urun_alis_fiyat,
                'urun_satis_fiyat' => $request->urun_satis_fiyat,
                'urun_aciklama' => $request->urun_aciklama,
                'created_at' => Carbon::now()
            ]);

            // Bildirim
            $mesaj = array(
                'bildirim' => 'Resimsiz yükleme başarılı.',
                'alert-type' => 'success'
            );
            //Bildirim

            return Redirect()->route('urunler.liste')->with($mesaj);
        }
    }


    public function UrunlerDuzenle($id)
    {
        $urunDuzenle = Urunler::findOrFail($id);
        return view('admin.urunler.urunler_duzenle', compact('urunDuzenle'));
    }

    public function UrunlerGuncelleForm(Request $request)
    {
        $urun_id = $request->id;
        $eski_resim = $request->onceki_resim;

        if ($request->file('urun_resim')) {
            $resim = $request->file('urun_resim');
            $resimadi = hexdec(uniqid()) . '.' . $resim->getClientOriginalExtension();

            Image::make($resim)->resize(650, 720)->save('upload/urunler/' . $resimadi);
            $resim_kaydet = 'upload/urunler/' . $resimadi;

            // Eski resmi silme işlemi
            if (file_exists($eski_resim)) {
                unlink($eski_resim);
            }
            // Eski resmi silme işlemi

            Urunler::findOrFail($urun_id)->update([
                'urun_kodu' => $request->urun_kodu,
                'urun_adi' => $request->urun_adi,
                'urun_stok' => $request->urun_stok,
                'urun_alis_fiyat' => $request->urun_alis_fiyat,
                'urun_satis_fiyat' => $request->urun_satis_fiyat,
                'urun_aciklama' => $request->urun_aciklama,
                'urun_resim' => $resim_kaydet

            ]);

            // Bildirim
            $mesaj = array(
                'bildirim' => 'Resim ile güncelleme başarılı.',
                'alert-type' => 'success'
            );
            //Bildirim

            return Redirect()->route('urunler.liste')->with($mesaj);
        }else {
            Urunler::findOrFail($urun_id)->update([
                'urun_kodu' => $request->urun_kodu,
                'urun_adi' => $request->urun_adi,
                'urun_stok' => $request->urun_stok,
                'urun_alis_fiyat' => $request->urun_alis_fiyat,
                'urun_satis_fiyat' => $request->urun_satis_fiyat,
                'urun_aciklama' => $request->urun_aciklama
            ]);

            // Bildirim
            $mesaj = array(
                'bildirim' => 'Resimsiz güncelleme başarılı.',
                'alert-type' => 'success'
            );
            //Bildirim

            return Redirect()->route('urunler.liste')->with($mesaj);
        }
    }

    public function UrunlerSil($id)
    {
        $urun_id =  Urunler::findOrFail($id);

        $resim = $urun_id->urun_resim;
        unlink($resim);

        Urunler::findOrFail($id)->delete();

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);

    }

    public function UrunlerEtiket($id)
    {
        $urunEtiket = Urunler::findOrFail($id);
        return view('admin.urunler.urunler_etiket', compact('urunEtiket'));
    }


}

































