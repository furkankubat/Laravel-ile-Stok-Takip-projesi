<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Stok Takip: Kayıt Ol</title>
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="{{ asset('asset/http://placehold.it/64.png/000/fff') }}">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('asset/http://placehold.it/144.png/000/fff') }}">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('asset/http://placehold.it/114.png/000/fff') }}">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('asset/http://placehold.it/72.png/000/fff') }}">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('asset/http://placehold.it/57.png/000/fff') }}">

    <!-- Styles -->
    <link href="{{ asset('asset/css/lib/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/themify-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/helper.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/style.css') }}" rel="stylesheet">
</head>

<body class="bg-primary">

<div class="unix-login">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="login-content">
                    <div class="login-logo">
                        <a href="#"><span>Stok Takip</span></a>
                    </div>
                    <div class="login-form">
                        <h4>Admin Kayıt</h4>
                        <form class="form-horizontal mt-3" method="POST" action="{{ route('register') }}">
                            @csrf
                            <div class="form-group">
                                <label>Ad Soyad</label>
                                <input id="name" class="form-control" type="text" name="name" required="" placeholder="İsim">
                                <x-input-error :messages="$errors->get('name')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label>Email Adresi</label>
                                <input id="email" class="form-control" type="email" name="email" required="" placeholder="Email">
                                <x-input-error :messages="$errors->get('email')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label>Şifre</label>
                                <input id="password" class="form-control" type="password" name="password" required="" placeholder="Şifre">
                                <x-input-error :messages="$errors->get('password')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label>Şifre Tekrar</label>
                                <input id="password_confirmation" class="form-control" type="password" name="password_confirmation" required="" placeholder="Şifre Tekrar">
                                <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
                            </div>


                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Kayıt Ol</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Hesabım Var <a href="{{ route('login') }}"> Giriş Yap</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
























