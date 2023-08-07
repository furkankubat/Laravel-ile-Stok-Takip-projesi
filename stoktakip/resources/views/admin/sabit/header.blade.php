<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="float-left">
                    <div class="hamburger sidebar-toggle">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </div>
                </div>
                <div class="float-right">
                    <div class="dropdown dib">
                        <div class="header-icon" data-toggle="dropdown">
                                <span class="user-avatar">{{ Auth::user()->name }}
                                    <i class="ti-angle-down f-s-10"></i>
                                </span>

                            <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">

                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="{{ route('profile.edit') }}">
                                                <i class="ti-user"></i>
                                                <span>Profil</span>
                                            </a>
                                        </li>

                                        <li>
                                            <form method="POST" action="{{ route('logout') }}">
                                                @csrf
                                                <x-dropdown-link :href="route('logout')"
                                                                 onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                                <i class="ti-power-off"></i>
                                                <span>Güvenli Çıkış</span>
                                                </x-dropdown-link>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
