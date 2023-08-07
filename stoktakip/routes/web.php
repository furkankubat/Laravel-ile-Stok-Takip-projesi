<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\MusterilerController;
use App\Http\Controllers\Admin\IlceController;
use App\Http\Controllers\Admin\UrunlerController;
use App\Http\Controllers\Admin\SatislarController;
use App\Http\Controllers\Admin\RolController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('auth/login');
});

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

// Müşteriler
Route::controller(MusterilerController::class)->group(function () {
    Route::get('/musteriler/liste', 'MusterilerListe')->name('musteriler.liste');
    Route::get('/musteriler/ekle', 'MusterilerEkle')->name('musteriler.ekle');
    Route::post('/musteriler/ekle/form', 'MusterilerEkleForm')->name('musteriler.ekle.form');
    Route::get('/musteriler/duzenle/{id}', 'MusterilerDuzenle')->name('musteriler.duzenle');
    Route::post('/musteriler/guncelle/form', 'MusterilerGuncelleForm')->name('musteriler.guncelle.form');
    Route::get('/musteriler/sil/{id}', 'MusterilerSil')->name('musteriler.sil');
});

//İlçeler endpoint
Route::get('/ilceler/{il_id}', [IlceController::class, 'getIlceler']);



// Ürünler
Route::controller(UrunlerController::class)->group(function () {
    Route::get('/urunler/liste', 'UrunlerListe')->name('urunler.liste');
    Route::get('/urunler/ekle', 'UrunlerEkle')->name('urunler.ekle');
    Route::post('/urunler/ekle/form', 'UrunlerEkleForm')->name('urunler.ekle.form');
    Route::get('/urunler/duzenle/{id}', 'UrunlerDuzenle')->name('urunler.duzenle');
    Route::post('/urunler/guncelle/form', 'UrunlerGuncelleForm')->name('urunler.guncelle.form');
    Route::get('/urunler/sil/{id}', 'UrunlerSil')->name('urunler.sil');
    Route::get('/urunler/etiket/{id}', 'UrunlerEtiket')->name('urunler.etiket');
});

// Satışlar
Route::controller(SatislarController::class)->group(function () {
    Route::get('/satislar/liste', 'SatislarListe')->name('satislar.liste');
    Route::get('/satislar/yap', 'SatisYap')->name('satislar.yap');
    Route::post('/satislar/yap/form', 'SatisYapForm')->name('satislar.yap.form');
    Route::get('/satislar/fatura', 'SatislarFatura')->name('fatura.olustur');
    Route::post('/satislar/guncelle/form', 'SatislarGuncelleForm')->name('satislar.guncelle.form');
    Route::get('/satislar/sil/{id}', 'SatislarSil')->name('satislar.sil');
});


// İzinler
Route::controller(RolController::class)->group(function () {
    Route::get('/izin/liste', 'IzinListe')->name('izin.liste');
    Route::get('/izin/ekle', 'IzinEkle')->name('izin.ekle');
    Route::post('/izin/ekle/form', 'IzinEkleForm')->name('izin.ekle.form');
    Route::get('/izin/duzenle/{id}', 'IzinDuzenle')->name('izin.duzenle');
    Route::post('/izin/guncelle/form', 'IzinGuncelleForm')->name('izin.guncelle.form');
    Route::get('/izin/sil/{id}', 'IzinSil')->name('izin.sil');
});


// Roller
Route::controller(RolController::class)->group(function () {
    Route::get('/rol/liste', 'RolListe')->name('rol.liste');
    Route::get('/rol/ekle', 'RolEkle')->name('rol.ekle');
    Route::post('/rol/ekle/form', 'RolEkleForm')->name('rol.ekle.form');
    Route::get('/rol/duzenle/{id}', 'RolDuzenle')->name('rol.duzenle');
    Route::post('/rol/guncelle/form', 'RolGuncelleForm')->name('rol.guncelle.form');
    Route::get('/rol/sil/{id}', 'RolSil')->name('rol.sil');

    // Rollere izin verme

    Route::get('/rol/izin/verme', 'RolIzinVerme')->name('rol.izin.verme');
    Route::post('/rol/yetki/ver', 'RolYetkiVer')->name('yetki.ver.form');
    Route::get('/rol/yetki/liste', 'RolYetkiListe')->name('rol.yetki.liste');
    Route::get('/rol/yetki/duzenle/{id}', 'RolYetkiDuzenle')->name('rol.yetki.duzenle');
    Route::post('/rol/yetki/guncelle/{id}', 'RolYetkiGuncelle')->name('rol.yetki.guncelle');
    Route::get('/admin/rol/sil/{id}', 'AdminRolSil')->name('admin.rol.sil');

    // Kullanıcılar

    Route::get('/kullanici/liste', 'KullaniciListe')->name('kullanici.liste');
    Route::get('/kullanici/ekle', 'KullaniciEkle')->name('kullanici.ekle');
    Route::post('/kullanici/ekle/form', 'KullaniciEkleForm')->name('kullanici.ekle.form');
    Route::get('/kullanici/duzenle/{id}', 'KullaniciDuzenle')->name('kullanici.duzenle');
    Route::post('/kullanici/guncelle/{id}', 'KullaniciGuncelle')->name('kullanici.guncelle');
    Route::get('/kullanici/sil/{id}', 'KullaniciSil')->name('kullanici.sil');
});




Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
