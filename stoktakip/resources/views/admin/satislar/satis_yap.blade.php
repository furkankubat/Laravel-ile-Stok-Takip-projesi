@extends('admin.admin_master')

@section('admin')
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Bootstrap-Select CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0/css/bootstrap-select.min.css">
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Satış Yap</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Satış Yap</h4>
                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('satislar.yap.form') }}"  enctype="multipart/form-data" id="myForm">
                            @csrf

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Müşteri Seç: </label>
                                    <select required id="musteri_id" class="form-control col-md-11" aria-label="Default select example" name="musteri_id">
                                        <option value=""></option>
                                        @foreach($musterigoster as $musteriler)
                                            <option value="{{ $musteriler->id }}">{{$musteriler->adi.' '.$musteriler->soyadi}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <p style="color: red" class="col-md-2">Ürün seçimi yaparken CTRL tuşuna basarak birden fazla seçim yapabilirsiniz...</p>

                                    <label class="col-md-1">Ürün Seç: </label>
                                    <select multiple required id="urun_id" class="selectpicker form-control col-md-9" data-container="body" data-live-search="true" aria-label="Default select example" name="urun_id[]">

                                        @foreach($urungoster as $urunler)
                                            <option value="{{ $urunler->id }}" data-urun-isim="{{ $urunler->urun_adi }}">
                                                {{ $urunler->urun_kodu.' - '.$urunler->urun_adi}}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div id="urunler">
                                <!-- Ürünler seçildiğinde dinamik olarak oluşturulacak alanlar burada yer alacak -->
                            </div>

                            <button type="submit" class="btn btn-success">Satış</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#urun_id').on('change', function() {
                var selectedUrunler = $(this).val();
                var urunlerDiv = $('#urunler');
                urunlerDiv.empty();


                selectedUrunler.forEach(function(urun_id) {
                    var urunAdi = $('#urun_id option[value="' + urun_id + '"]').attr('data-urun-isim');
                    urunlerDiv.append(`
                        <div class="form-group">
                            <div class="row">
                                <label class="col-md-3">Satış Fiyatı(TL) - (${urunAdi}): </label>
                                <input name="satis_fiyati[${urun_id}]" type="number" class="form-control col-md-3">
                                <label class="col-md-3">Satılan Adet - (${urunAdi}): </label>
                                <input name="urun_adedi[${urun_id}]" type="number" class="form-control col-md-3">
                            </div>
                        </div>
                    `);
                });
            });
        });
    </script>
@endsection
