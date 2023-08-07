@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Ürün Ekle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Ürün Ekle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('urunler.ekle.form') }}"  enctype="multipart/form-data" id="myForm">
                            @csrf
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Kodu: </label>
                                    <input readonly id="urun_kodu" name="urun_kodu" type="text" class="form-control col-md-4" value="{{ generateNextStockCode() }}">

                                    <label class="col-md-1">Ürün Adı: </label>
                                    <input id="urun_adi" name="urun_adi" type="text" class="form-control col-md-4">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Alış Fiyatı(TL): </label>
                                    <input id="urun_alis_fiyat" name="urun_alis_fiyat" type="number" class="form-control col-md-4">

                                    <label class="col-md-1">Ürün Satış Fiyatı(TL): </label>
                                    <input id="urun_satis_fiyat" name="urun_satis_fiyat" type="number" class="form-control col-md-4">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Stoğu: </label>
                                    <input id="urun_stok" name="urun_stok" type="number" class="form-control col-md-4">

                                    <label class="col-md-1">Ürün Açıklaması: </label>
                                    <textarea class="form-control col-md-4" name="urun_aciklama" id="urun_aciklama" cols="30" rows="10"></textarea>

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Resim: </label>
                                    <input id="urun_resim" name="urun_resim" type="file" class="form-control col-md-4" placeholder="Ürün Resim">
                                </div>
                            </div>


                            <button type="submit" class="btn btn-success">Ürün Ekle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection


@php
    function generateNextStockCode() {
        // Veritabanından en son stok kodunu alın
       // $lastStockCode = 'P-0001'; // Varsayılan değer, eğer veritabanında henüz stok kodu yoksa

        // Burada veritabanından en son stok kodunu almak için uygun kodu eklemelisiniz
         $lastStockCode = DB::table('urunlers')->orderBy('urun_kodu', 'desc')->value('urun_kodu');

        // En son stok kodundan sonraki sayıyı alın ve bir sonraki stok kodunu oluşturun
        $lastStockNumber = (int) substr($lastStockCode, 2); // "P-0001" -> 1
        $nextStockNumber = $lastStockNumber + 1; // 1 + 1 = 2
        $nextStockCode = 'P-' . str_pad($nextStockNumber, 4, '0', STR_PAD_LEFT); // "P-" + "0002" = "P-0002"

        return $nextStockCode;
    }
@endphp

