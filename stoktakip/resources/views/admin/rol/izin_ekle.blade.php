@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">İzin Ekle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>İzin Ekle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('izin.ekle.form') }}"  id="myForm">
                            @csrf
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">İzin Adı: </label>
                                    <input required id="name" name="name" type="text" class="form-control col-md-11">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Grup Adı: </label>
                                    <select name="grup_adi" id="grup_adi" class="form-control col-md-11">
                                        <option selected="">Grup seçiniz.</option>
                                        <option value="musteriler">Müşteriler</option>
                                        <option value="urunler">Ürünler</option>
                                        <option value="satislar">Satışlar</option>
                                    </select>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-success">İzin Ekle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
