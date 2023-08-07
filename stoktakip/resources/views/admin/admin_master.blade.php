<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- theme meta -->
    <meta name="theme-name" content="focus" />
    <title>Admin Panel: Stok Takip</title>
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
    <link href="{{ asset('asset/css/lib/calendar2/pignose.calendar.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/chartist/chartist.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/themify-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/owl.carousel.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('asset/css/lib/owl.theme.default.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('asset/css/lib/weather-icons.css') }}" rel="stylesheet" />
    <link href="{{ asset('asset/css/lib/menubar/sidebar.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/helper.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/css/lib/data-table/buttons.bootstrap.min.css') }}" rel="stylesheet" />


    <!-- bildiri -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" >
    <!-- bildiri -->
</head>

<body>

<!-- sidebar -->
@include('admin.sabit.sidebar')
<!-- /# sidebar -->

<!-- header -->
@include('admin.sabit.header')
<!-- /# header -->

<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
@yield('admin')
<!-- end main content-->


<!-- jquery vendor -->
<script src="{{ asset('asset/js/lib/jquery.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/jquery.nanoscroller.min.js') }}"></script>
<!-- nano scroller -->
<script src="{{ asset('asset/js/lib/menubar/sidebar.js') }}"></script>
<script src="{{ asset('asset/js/lib/preloader/pace.min.js') }}"></script>
<!-- sidebar -->

<script src="{{ asset('asset/js/lib/bootstrap.min.js') }}"></script>
<script src="{{ asset('asset/js/scripts.js') }}"></script>
<!-- bootstrap -->

<script src="{{ asset('asset/js/lib/calendar-2/moment.latest.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/calendar-2/pignose.calendar.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/calendar-2/pignose.init.js') }}"></script>


<!-- bildiri -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>

    @if(Session::has('bildirim'))
    var type = "{{ Session::get('alert-type','info') }}"
    switch(type){
        case 'info':
            toastr.info(" {{ Session::get('bildirim') }} ");
            break;

        case 'success':
            toastr.success(" {{ Session::get('bildirim') }} ");
            break;

        case 'warning':
            toastr.warning(" {{ Session::get('bildirim') }} ");
            break;

        case 'error':
            toastr.error(" {{ Session::get('bildirim') }} ");
            break;
    }
    @endif
</script>
<!-- bildiri -->
<script src="{{ asset('asset/js/lib/weather/jquery.simpleWeather.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/weather/weather-init.js') }}"></script>
<script src="{{ asset('asset/js/lib/circle-progress/circle-progress.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/circle-progress/circle-progress-init.js') }}"></script>
<script src="{{ asset('asset/js/lib/chartist/chartist.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/sparklinechart/jquery.sparkline.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/sparklinechart/sparkline.init.js') }}"></script>
<script src="{{ asset('asset/js/lib/owl-carousel/owl.carousel.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/owl-carousel/owl.carousel-init.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/datatables.min.js')}}"></script>
<script src="{{ asset('asset/js/lib/data-table/dataTables.buttons.min.js')}}"></script>
<script src="{{ asset('asset/js/lib/data-table/buttons.flash.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/jszip.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/pdfmake.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/vfs_fonts.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/buttons.html5.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/buttons.print.min.js') }}"></script>
<script src="{{ asset('asset/js/lib/data-table/datatables-init.js') }}"></script>
<!-- scripit init-->
<script src="{{ asset('asset/js/dashboard2.js') }}"></script>


<!-- admin_master.blade.php *************************-->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="{{ asset('asset/js/sweet.js') }}"></script>
<!-- admin_master.blade.php *************************-->
</body>

</html>
