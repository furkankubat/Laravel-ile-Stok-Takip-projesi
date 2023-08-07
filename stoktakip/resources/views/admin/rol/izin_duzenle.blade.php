@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">İzin Düzenle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>İzin Düzenle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('izin.guncelle.form') }}"  id="myForm">
                            @csrf

                            <input type="hidden" name="id" value="{{ $izinler->id }}">

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">İzin Adı: </label>
                                    <input required value="{{ $izinler->name }}" id="name" name="name" type="text" class="form-control col-md-11">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Grup Adı: </label>
                                    <select name="grup_adi" id="grup_adi" class="form-control col-md-11">
                                        <option selected="">Grup seçiniz.</option>
                                        <option value="musteriler" {{$izinler->grup_adi == 'musteriler' ? 'selected': ''}}>Müşteriler</option>
                                        <option value="urunler" {{$izinler->grup_adi == 'urunler' ? 'selected': ''}}>Ürünler</option>
                                        <option value="satislar" {{$izinler->grup_adi == 'satislar' ? 'selected': ''}}>Satışlar</option>
                                    </select>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-success">İzin Güncelle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
