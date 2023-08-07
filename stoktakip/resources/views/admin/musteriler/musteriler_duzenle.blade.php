@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Müşteri Düzenle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Müşteri Düzenle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('musteriler.guncelle.form') }}" id="myForm">
                            @csrf

                            <input type="hidden" name="id" value="{{$musterilerDuzenle->id}}">

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Adı: </label>
                                    <input required value="{{$musterilerDuzenle->adi}}" id="adi" name="adi" type="text" class="form-control col-md-4" placeholder="Adı">

                                    <label class="col-md-1">Soyadı: </label>
                                    <input required value="{{$musterilerDuzenle->soyadi}}" id="soyadi" name="soyadi" type="text" class="form-control col-md-4" placeholder="Soyadı">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">E-Posta: </label>
                                    <input required value="{{$musterilerDuzenle->email}}" id="email" name="email" type="email" class="form-control col-md-4" placeholder="E-Posta">

                                    <label class="col-md-1">TC: </label>
                                    <input required value="{{$musterilerDuzenle->tc}}" id="tc" name="tc" maxlength="11" type="number" class="form-control col-md-4" placeholder="TC">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Telefon: </label>
                                    <input required value="{{$musterilerDuzenle->telefon}}" id="telefon" name="telefon" type="number" class="form-control col-md-4" placeholder="Telefon">

                                    <label class="col-md-1">Adres: </label>
                                    <textarea  required name="adres" id="adres" class="form-control col-md-4" cols="30" rows="10">{{$musterilerDuzenle->adres}}</textarea>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">İl: </label>
                                    <select required id="il" class="form-select col-md-4" aria-label="Default select example" name="il">
                                        <option selected=""></option>
                                        @foreach($iller as $il)
                                            <option id="il" value="{{ $il->id }}" {{$il->id == $musterilerDuzenle->il ? 'selected' : ''}}>{{$il->il_adi}}</option>
                                        @endforeach
                                    </select>

                                    <label class="col-md-1">İlçe: </label>
                                    <select required id="ilce" class="form-select col-md-4" aria-label="Default select example" name="ilce">
                                        <option selected=""></option>
                                        @foreach($ilceler as $ilce)
                                            <option id="ilce" value="{{ $ilce->id }}" {{ $ilce->id == $musterilerDuzenle->ilce ? 'selected' : '' }}>{{$ilce->ilce_adi}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <button type="submit" class="btn btn-success">Müşteri Güncelle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('asset/js/code.jquery.com_jquery-3.7.0.slim.min.js') }}"></script>

    <script>
        $(document).ready(function() {

            // İl seçeneği değiştiğinde çalışacak fonksiyon
            $('#il').on('change', function() {
                var selectedIlID = $(this).val();

                // Ajax isteği yapılacak endpoint
                var endpoint = "/ilceler/" + selectedIlID;

                // Ajax isteği yapma
                $.ajax({
                    url: endpoint,
                    method: "GET",
                    dataType: "json",
                    success: function(data) {
                        // İlçe select elementini boşaltma
                        $('#ilce').empty();

                        // Geri dönen ilçe verilerini kullanarak select elementini doldurma
                        $.each(data, function(index, ilce) {
                            $('#ilce').append('<option value="' + ilce.id + '">' + ilce.ilce_adi + '</option>');
                        });

                        // İlçe seçeneğini aktif hale getirme
                        $('#ilce').prop('disabled', false);
                    },
                    error: function(xhr, status, error) {
                        // Hata durumunda konsola hata mesajını yazdırma
                        console.error(error);
                    }
                });
            });
        });
    </script>
@endsection




