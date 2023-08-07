<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Stok Takip: Giriş</title>
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
                        <h4>Admin Giriş</h4>
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="form-group">
                                <label>Kullanıcı Adı</label>
                                <input id="email" type="email" name="email" required="" class="form-control" placeholder="Kullanıcı Adı">
                                <x-input-error :messages="$errors->get('email')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label>Şifre</label>
                                <input id="password" type="password" name="password" required="" class="form-control" placeholder="Şifre">
                            </div>
                            <div class="checkbox">

                                <label class="pull-right">
                                    <a href="{{ route('password.request') }}">Parolamı Unuttum?</a>
                                </label>

                            </div>
                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Giriş</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Hesabınız mı yok? <a href="{{ route('register') }}"> Buradan Kaydolun</a></p>
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
