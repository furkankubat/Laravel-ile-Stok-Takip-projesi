<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;

class RolController extends Controller
{
    public function IzinListe()
    {
        $izinler = Permission::all();
        return view('admin.rol.izin_liste', compact('izinler'));
    }

    public function IzinEkle()
    {
        return view ('admin.rol.izin_ekle');
    }


    public function IzinEkleForm(Request $request)
    {
        $rol = Permission::create([
            'name' => $request->name,
            'grup_adi' => $request->grup_adi,
        ]);

        // Bildirim
        $mesaj = [
            'bildirim' => 'İzin ekleme başarılı...',
            'alert-type' => 'success'
        ];

        // Bildirimi listele sayfasına gönderiyoruz
        return redirect()->route('izin.liste')->with($mesaj);
    }


    public function IzinDuzenle($id)
    {
        $izinler = Permission::findOrFail($id);

        return view('admin.rol.izin_duzenle', compact('izinler'));
    }

    public function IzinGuncelleForm(Request $request)
    {
        $izin_id = $request->id;

        Permission::findOrFail($izin_id)->update([
            'name' => $request->name,
            'grup_adi' => $request->grup_adi
        ]);

        // Bildirim
        $mesaj = [
            'bildirim' => 'Güncelleme başarılı...',
            'alert-type' => 'success'
        ];

        // Bildirimi listele sayfasına gönderiyoruz
        return redirect()->route('izin.liste')->with($mesaj);
    }

    public function IzinSil($id)
    {
        Permission::findOrFail($id)->delete();

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);

    }

    /////////////////////////////////////   Rol İşlemleri   ///////////////////////////////////////////


    public function RolListe()
    {
        $roller = Role::all();
        return view('admin.rol.rol_liste', compact('roller'));

    }

    public function RolEkle()
    {
        return view ('admin.rol.rol_ekle');
    }


    public function RolEkleForm(Request $request)
    {
        $rol = Role::create([
            'name' => $request->name,
        ]);

        // Bildirim
        $mesaj = [
            'bildirim' => 'Rol ekleme başarılı...',
            'alert-type' => 'success'
        ];

        // Bildirimi listele sayfasına gönderiyoruz
        return redirect()->route('rol.liste')->with($mesaj);
    }

    public function RolDuzenle($id)
    {
        $roller = Role::findOrFail($id);

        return view('admin.rol.rol_duzenle', compact('roller'));
    }

    public function RolGuncelleForm(Request $request)
    {
        $rol_id = $request->id;

        Role::findOrFail($rol_id)->update([
            'name' => $request->name,
        ]);

        // Bildirim
        $mesaj = [
            'bildirim' => 'Güncelleme başarılı...',
            'alert-type' => 'success'
        ];

        // Bildirimi listele sayfasına gönderiyoruz
        return redirect()->route('rol.liste')->with($mesaj);
    }

    public function RolSil($id)
    {
        Role::findOrFail($id)->delete();

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);

    }

    //Rollere İzin Verme

    public function RolIzinVerme()
    {
        $roller = Role::all();
        $izinler = Permission::all();
        $izin_gruplari = User::IzinGruplari();

        return view('admin.rol.rol_izin_ver', compact('roller', 'izinler', 'izin_gruplari'));
    }

    public function RolYetkiVer(Request $request)
    {
        $data = array();
        $yetkiler = $request->yetki;

        foreach ($yetkiler as $key => $item)
        {
            $data['role_id'] = $request->rol_id;
            $data['permission_id'] = $item;

            DB::table('role_has_permissions')->insert($data);
        }

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Yetki verildi.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('rol.liste')->with($mesaj);
    }

    public function RolYetkiListe()
    {
        $rol = Role::all();
        return view('admin.rol.rol_yetki_liste',compact('rol'));
    }

    public function RolYetkiDuzenle ($id)
    {
        $rol = Role::findOrFail($id);
        $yetkiler = Permission::all();
        $izin_gruplari = User::IzinGruplari();

        return view('admin.rol.rol_yetki_duzenle', compact('rol','yetkiler', 'izin_gruplari'));
    }

    public function RolYetkiGuncelle(Request $request, $id)
    {
        $rol = Role::findOrFail($id);
        $secili_yetkiler = $request->yetki;

        if (!empty($secili_yetkiler))
        {
            $rol->syncPermissions($secili_yetkiler);
        }

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Güncelleme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('rol.yetki.liste')->with($mesaj);
    }

    public function AdminRolSil($id)
    {
        $rol = Role::findOrFail($id);
        if (!is_null($rol))
        {
            $rol->delete();
        }

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);
    }

    public function KullaniciListe()
    {
        $kullanici_liste = User::where('rol', 'admin')->latest()->get();

        return view('admin.kullanicilar.kullanici_liste', compact('kullanici_liste'));
    }

    public function KullaniciEkle()
    {
        $roller = Role::all();
        return view('admin.kullanicilar.kullanici_ekle', compact('roller'));
    }

    public function KullaniciEkleForm(Request $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->rol = 'admin';
        $user->save();

        if ($request->rol) {
            $user->assignRole($request->rol);
        }

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Kullanıcı ekleme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('kullanici.liste')->with($mesaj);
    }

    public function KullaniciDuzenle($id)
    {
        $user = User::findOrFail($id);
        $roller = Role::all();

        return view('admin.kullanicilar.kullanici_duzenle', compact('user', 'roller'));
    }

    public function KullaniciGuncelle(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->rol = 'admin';
        $user->save();

        $user->roles()->detach();
        if ($request->rol) {
            $user->assignRole($request->rol);
        }

        // Bildirim
        $mesaj = array(
            'bildirim' => 'Kullanıcı güncelleme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->route('kullanici.liste')->with($mesaj);
    }

    public function KullaniciSil($id)
    {
        $user = User::findOrFail($id);
        if (!is_null($user)){
            $user->delete();
        }
        // Bildirim
        $mesaj = array(
            'bildirim' => 'Kullanıcı silme başarılı.',
            'alert-type' => 'success'
        );
        //Bildirim

        return Redirect()->back()->with($mesaj);
    }



}
