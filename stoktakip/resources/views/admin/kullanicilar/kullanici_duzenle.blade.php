@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Kullanıcı Düzenle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Kullanıcı Düzenle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('kullanici.guncelle', $user->id) }}" id="myForm">
                            @csrf
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Adı Soyadı: </label>
                                    <input required id="name" name="name" type="text" class="form-control col-md-4" value="{{$user->name}}">

                                    <label class="col-md-1">E-Posta: </label>
                                    <input required id="email" name="email" type="email" class="form-control col-md-4" value="{{$user->email}}">

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Rol: </label>
                                    <select required id="il" class="form-select col-md-4" aria-label="Default select example" name="rol">
                                        <option selected=""></option>
                                        @foreach($roller as $rol)
                                            <option required id="rol" value="{{ $rol->id }}" {{$user->hasRole($rol->name) ? 'selected' : ''}}>{{$rol->name}}</option>
                                        @endforeach
                                    </select>

                                </div>
                            </div>


                            <button type="submit" class="btn btn-success">Kullanıcı Düzenle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection




