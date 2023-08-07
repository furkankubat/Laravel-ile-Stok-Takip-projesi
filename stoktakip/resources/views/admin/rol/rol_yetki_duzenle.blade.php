@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Role Yetki Düzenle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Role Yetki Düzenle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('rol.yetki.guncelle', $rol->id) }}"  id="myForm">
                            @csrf


                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Rol Adı: </label>
                                    <input readonly required value="{{ $rol->name }}" id="name" name="name" type="text" class="form-control col-md-11">
                                </div>
                            </div>


                            <hr>

                            @foreach($izin_gruplari as $grup)
                                <div class="row mb-3">
                                    <div class="col-3">
                                        @php
                                            $yetkiGrup = App\Models\User::YetkiGruplari($grup->grup_adi);
                                        @endphp
                                        <div class="form-check mb-3">
                                            <input class="form-check-input" type="checkbox" id="formCheck1" {{ App\Models\User::RolYetkileri($rol,$yetkiGrup) ? 'checked' : '' }}>
                                            <label class="form-check-label" for="formCheck1">
                                                <h5> {{ $grup->grup_adi }} </h5>
                                            </label>
                                        </div>
                                    </div>


                                    <div class="col-9 mb-4">


                                        @foreach($yetkiGrup as $izin)
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" type="checkbox" name="yetki[]" {{ $rol->hasPermissionTo($izin->name) ? 'checked' : '' }} id="formCheck1{{ $izin->id }}" value="{{ $izin->id }}">
                                                <label class="form-check-label" for="formCheck1{{ $izin->id }}">
                                                    {{ $izin->name }}
                                                </label>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endforeach


                            <input type="submit" class="btn btn-info waves-effect waves-light" value="Rol Yetki Güncelle">
                        </form>


                    </div>
                </div>
            </div> <!-- end col -->
        </div>

    </div>
    </div>

@endsection



























