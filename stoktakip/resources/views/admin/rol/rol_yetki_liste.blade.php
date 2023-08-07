@extends('admin.admin_master')

@section('admin')
    <div class="content-wrap">
        <div style="background-color: #647efc">
            <h4 style="color: white" class="text-center mt-4">Rol Yetki Listesi </h4>

        </div>
        <section id="main-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="bootstrap-data-table-panel">
                            <div class="table-responsive">
                                <div id="bootstrap-data-table-export_wrapper"
                                     class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                    <table id="bootstrap-data-table-export"
                                           class="table table-striped table-bordered dataTable no-footer" role="grid"
                                           aria-describedby="bootstrap-data-table-export_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" tabindex="0"
                                                aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1"
                                                aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending"
                                                style="width: 150px;">Sıra
                                            </th>
                                            <th class="sorting_asc" tabindex="0"
                                                aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1"
                                                aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending"
                                                style="width: 381px;">Rol Adı
                                            </th>
                                            <th class="sorting_asc" tabindex="0"
                                                aria-controls="bootstrap-data-table-export" rowspan="1" colspan="1"
                                                aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending"
                                                style="width: 381px;">Yetkiler
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="bootstrap-data-table-export"
                                                rowspan="1" colspan="1"
                                                aria-label="Salary: activate to sort column ascending"
                                                style="width: 350px;">İşlem
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        @foreach($rol as $roller)
                                            <tr role="row" class="odd">
                                                <td class="sorting_1">{{ $loop->iteration }}</td>
                                                <td>{{ $roller->name }}</td>
                                                <td>
                                                @foreach($roller->permissions as $yetkiler)
                                                    <span class="badge rounded-pill bg-primary">{{ $yetkiler->name }}</span>
                                                @endforeach
                                                </td>
                                                <td>
                                                    <a href="{{ route('rol.yetki.duzenle',$roller->id) }}" class="btn btn-info sm m-2 ti-pencil-alt" title="Düzenle">
                                                    </a>
                                                    <a href="{{ route('admin.rol.sil',$roller->id) }}" class="btn btn-danger sm ti-trash mr-2" title="Sil" id="sil">
                                                    </a>


                                                </td>
                                            </tr>

                                        @endforeach

                                        </tbody>
                                    </table>

                                    <div class="dataTables_info" id="bootstrap-data-table-export_info" role="status"
                                         aria-live="polite">Showing 1 to 10 of 57 entries
                                    </div>
                                    <div class="dataTables_paginate paging_simple_numbers"
                                         id="bootstrap-data-table-export_paginate">
                                        <ul class="pagination">
                                            <li class="paginate_button previous disabled"
                                                id="bootstrap-data-table-export_previous"><a href="#"
                                                                                             aria-controls="bootstrap-data-table-export"
                                                                                             data-dt-idx="0"
                                                                                             tabindex="0">Previous</a>
                                            </li>
                                            <li class="paginate_button active"><a href="#"
                                                                                  aria-controls="bootstrap-data-table-export"
                                                                                  data-dt-idx="1" tabindex="0">1</a>
                                            </li>
                                            <li class="paginate_button "><a href="#"
                                                                            aria-controls="bootstrap-data-table-export"
                                                                            data-dt-idx="2" tabindex="0">2</a></li>
                                            <li class="paginate_button "><a href="#"
                                                                            aria-controls="bootstrap-data-table-export"
                                                                            data-dt-idx="3" tabindex="0">3</a></li>
                                            <li class="paginate_button "><a href="#"
                                                                            aria-controls="bootstrap-data-table-export"
                                                                            data-dt-idx="4" tabindex="0">4</a></li>
                                            <li class="paginate_button "><a href="#"
                                                                            aria-controls="bootstrap-data-table-export"
                                                                            data-dt-idx="5" tabindex="0">5</a></li>
                                            <li class="paginate_button "><a href="#"
                                                                            aria-controls="bootstrap-data-table-export"
                                                                            data-dt-idx="6" tabindex="0">6</a></li>
                                            <li class="paginate_button next" id="bootstrap-data-table-export_next"><a
                                                    href="#" aria-controls="bootstrap-data-table-export" data-dt-idx="7"
                                                    tabindex="0">Next</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# card -->
                </div>
                <!-- /# column -->
            </div>
            <!-- /# row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="footer">
                        <p>2023 © Admin Panel. - <a href="#">furkankubat135@gmail.com</a></p>
                    </div>
                </div>
            </div>
        </section>
    </div>

@endsection
