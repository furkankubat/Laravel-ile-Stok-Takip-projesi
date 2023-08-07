<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo"><a href="{{ route('dashboard') }}">
                        <!-- <img src="images/logo.png" alt="" /> --><span>Stok Takip</span></a></div>

                <li><a href="{{ route('dashboard') }}"><i class="ti-home"></i> Ana Sayfa </a></li>

                <li><a class="sidebar-sub-toggle"><i class="ti-user"></i> Müşteriler <span
                            class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="{{ route('musteriler.liste') }}">Müşteriler Liste</a></li>
                        <li><a href="{{ route('musteriler.ekle') }}">Müşteri Ekle</a></li>
                    </ul>
                </li>

                @if(Auth::user()->can('urunler.menu'))

                <li><a class="sidebar-sub-toggle"><i class="ti-shopping-cart"></i> Ürünler <span
                            class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="{{ route('urunler.liste') }}">Ürünler Liste</a></li>
                        @if(Auth::user()->can('urunler.duzenle'))
                        <li><a href="{{ route('urunler.ekle') }}">Ürün Ekle</a></li>
                        @endif
                    </ul>
                </li>
                @endif

                <li><a class="sidebar-sub-toggle"><i class="ti-money"></i> Satışlar <span
                            class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="{{ route('satislar.liste') }}">Satılan Ürünler Listesi</a></li>
                        <li><a href="{{ route('satislar.yap') }}">Satış Yap</a></li>
                    </ul>
                </li>

                <li><a class="sidebar-sub-toggle"><i class="ti-list-ol"></i> Roller ve İzinler <span
                            class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="{{ route('izin.liste') }}">İzinler</a></li>
                        <li><a href="{{ route('rol.liste') }}">Rooler</a></li>
                        <li><a href="{{ route('rol.izin.verme') }}">Role İzin Ver</a></li>
                        <li><a href="{{ route('rol.yetki.liste') }}">Role Yetki Liste</a></li>
                    </ul>
                </li>

                <li><a class="sidebar-sub-toggle"><i class="ti-user"></i> Kullanıcılar <span
                            class="sidebar-collapse-icon ti-angle-down"></span></a>
                    <ul>
                        <li><a href="{{ route('kullanici.liste') }}">Kullanıcılar Listesi</a></li>
                        <li><a href="{{ route('musteriler.ekle') }}">Müşteri Ekle</a></li>
                    </ul>
                </li>


            </ul>
        </div>
    </div>
</div>
