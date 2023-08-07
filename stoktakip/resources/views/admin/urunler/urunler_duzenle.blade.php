@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Ürün Düzenle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Ürün Düzenle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('urunler.guncelle.form') }}"  enctype="multipart/form-data" id="myForm">
                            @csrf
                            <input type="hidden" name="id" value="{{ $urunDuzenle->id }}">
                            <input type="hidden" name="onceki_resim" value="{{ $urunDuzenle->urun_resim }}">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Kodu: </label>
                                    <input readonly id="urun_kodu" name="urun_kodu" type="text" class="form-control col-md-4" value="{{ $urunDuzenle->urun_kodu }}">

                                    <label class="col-md-1">Ürün Adı: </label>
                                    <input id="urun_adi" name="urun_adi" type="text" class="form-control col-md-4" value="{{ $urunDuzenle->urun_adi }}">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Alış Fiyatı(TL): </label>
                                    <input id="urun_alis_fiyat" name="urun_alis_fiyat" type="number" class="form-control col-md-4" value="{{ $urunDuzenle->urun_alis_fiyat }}">

                                    <label class="col-md-1">Ürün Satış Fiyatı(TL): </label>
                                    <input id="urun_satis_fiyat" name="urun_satis_fiyat" type="number" class="form-control col-md-4" value="{{ $urunDuzenle->urun_satis_fiyat }}">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Stoğu: </label>
                                    <input id="urun_stok" name="urun_stok" type="number" class="form-control col-md-4" value="{{ $urunDuzenle->urun_stok }}">

                                    <label class="col-md-1">Ürün Açıklaması: </label>
                                    <textarea class="form-control col-md-4" name="urun_aciklama" id="urun_aciklama" cols="30" rows="10">{{ $urunDuzenle->urun_aciklama }}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Ürün Resim: </label>
                                    <input id="urun_resim" name="urun_resim" type="file" class="form-control col-md-4" placeholder="Ürün Resim">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2">Mevcut Resim</label>
                                <div class="col-sm-10">
                                    <img width="200" height="200" class="rounded avatar-lg"
                                         src="{{ (!empty($urunDuzenle->urun_resim)) ? url($urunDuzenle->urun_resim) : url('upload/resim-yok.png') }}"
                                         alt="" id="resimGoster">
                                </div>
                            </div>


                            <button type="submit" class="btn btn-success">Ürün Güncelle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

