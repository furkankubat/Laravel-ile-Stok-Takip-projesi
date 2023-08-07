@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">İzin Ekle</h4>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-title">
                    <h4>Rol Ekle</h4>

                </div>
                <div class="card-body">
                    <div class="basic-form">
                        <form method="post" action="{{ route('rol.ekle.form') }}"  id="myForm">
                            @csrf
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-1">Rol Adı: </label>
                                    <input required id="name" name="name" type="text" class="form-control col-md-11">
                                </div>
                            </div>

                            <button type="submit" class="btn btn-success">Rol Ekle</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
