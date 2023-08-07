@extends('admin.admin_master')

@section('admin')

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Merhaba, <span>Buraya Hoşgeldiniz</span></h1>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /# row -->
            @php
               $tumUrunler=  App\Models\Urunler::all();
               $gider=  (App\Models\Urunler::sum('urun_alis_fiyat'))*(App\Models\Urunler::sum('urun_stok'));
               $toplamStok=  App\Models\Urunler::sum('urun_stok');
               $toplamGelir=  App\Models\Satislar::sum('kar_zarar');

               $toplamMusteriSayisi=  App\Models\Musteriler::count();
            @endphp

            @php

            @endphp
            <section id="main-content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-user color-primary border-primary"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Toplam Müsteri Sayısı</div>
                                    <div class="stat-digit">{{$toplamMusteriSayisi}}</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-money color-danger border-danger"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Toplam Gider</div>
                                    <div class="stat-digit">{{$gider}} TL</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-money color-success border-success"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Toplam Gelir</div>
                                    <div class="stat-digit">{{$toplamGelir}} TL</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-menu color-success border-success"></i></div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Toplam Stok</div>
                                    <div class="stat-digit">{{$toplamStok}}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-title">
                                <h4>Ürünler</h4>

                            </div>
                            <div class="card-body">
                                <canvas id="myChart"></canvas>
                            </div>
                        </div>
                    </div>

                </div>




                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer">
                            <p>2023 © Admin Panel. - <a href="#">furkankubat135@gmail.com</a></p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('myChart');

        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: [
                    @foreach($tumUrunler as $urun)
                        '{{$urun->urun_adi}}',
                    @endforeach
                ],
                datasets: [{
                    label: '# Stok',
                    data: [

                        @foreach($tumUrunler as $urun)
                            {{$urun->urun_stok}},
                        @endforeach],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>

@endsection
