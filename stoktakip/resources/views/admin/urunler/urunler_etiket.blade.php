@extends('admin.admin_master')

@section('admin')

    <div class="content-wrap">
        <div id="divYazdir" class="card col-md-12 text-center">
            <div class="card-body">
                <strong style="color: #0f0f10; font-size: 100px;" class="">{{$urunEtiket->urun_adi}}</strong>
                <p style="color: #0f0f10; font-size: 100px;" class="card-text">{{$urunEtiket->urun_satis_fiyat}} ₺</p>

            </div>
        </div>

    </div>
    <div class="text-center">
        <a href="javascript:printDiv('divYazdir');" class="btn btn-primary"><i class="ti-printer"> Çıktı Al</i></a>
    </div>

    <script type="text/javascript">
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
@endsection
