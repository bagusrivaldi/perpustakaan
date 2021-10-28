@extends('layouts.admin')
@section('header', 'Peminjaman')

@push('css')
<link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
<link rel="stylesheet" href="{{ asset('plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
@endpush

@section('content')
@role('petugas')
<component id="controller">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <a href="#" @click="addData()" class="btn btn-sm btn-primary pull-right">Tambah Peminjaman</a>
                </div>
                <div class="col-md-3">
                    <select name="status" class="form-control">
                        <option value="0">Filter Status</option>
                        <option value="sudah">Sudah dikembalikan</option>
                        <option value="belum">Belum dikembalikan</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <input type="text" class="form-control" name="date" placeholder="Filter tanggal" onfocus="(this.type='date')">
                </div>
            </div>
        </div>
        <div class="card-body">
            <table id="datatable" class="table table-bordered table-striped" width="100%">
                <thead>
                    <tr>
                        <th>Tanggal Pinjam</th>
                        <th>Tanggal Kembali</th>
                        <th>Nama Peminjam</th>
                        <th>Lama Pinjam (hari)</th>
                        <th>Total Buku</th>
                        <th>Total Bayar</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>

    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <form :action="actionUrl" method="post" autocomplete="off" @submit="submitForm($event, data.id)">
                    <div class="modal-header">
                        <h4 class="modal-title" v-if="!editStatus">Tambah Peminjaman</h4>
                        <h4 class="modal-title" v-if="editStatus">Edit Peminjaman</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        @csrf
                        <input type="hidden" name="_method" value="PUT" v-if="editStatus">
                        <div class="form-group row">
                            <label for="anggota" class="col-form-label col-sm-2">Anggota</label>
                            <div class="col-sm-10">
                                <select name="id_anggota" id="" class="form-control">
                                    <option value="">Nama Anggota</option>
                                    @foreach($data_anggota as $anggota)
                                    <option :selected="data.id_anggota == {{ $anggota['id'] }}" value="{{ $anggota['id'] }}">{{ $anggota['nama'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="anggota" class="col-form-label col-sm-2">Tanggal</label>
                            <div class="col-sm-5">
                                <input type="date" class="form-control" name="tgl_pinjam" :value="data.tgl_pinjam">
                            </div>
                            <div class="col-sm-5">
                                <input type="date" class="form-control" name="tgl_kembali" :value="data.tgl_kembali">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="buku" class="col-form-label col-sm-2 ml-3">Buku</label>
                        <div class="col-sm-9">
                            <div class="select2-purple">
                                <select class="select2 form-control" id="select2-buku" data-dropdown-css-class="select2-purple" name="buku[]" multiple="multiple" data-placeholder="Pilih Buku">
                                    @foreach ($data_buku as $buku )
                                    <option value="{{ $buku['id'] }}">{{ $buku['judul'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" v-if="editStatus">
                        <label for="status" class="col-sm-2 ml-3 col-form-label">Status</label>
                        <div class="col-sm-6">
                            <div class="icheck-danger d-inline">
                                <input type="radio" id="radioDanger1" value="0" name="status" :checked="data.status == 0 ">
                                <label for="radioDanger1">Belum dikembalikan</label>
                            </div>
                            <div class="icheck-success d-inline">
                                <input type="radio" id="radioSuccess2" value="1" name="status" :checked="data.status == 1 ">
                                <label for="radioSuccess2">Sudah dikembalikan</label>
                            </div>
                        </div>
                    </div>  
                    <div class="form-group" v-if="editStatus"></div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
            </div>
            </form>
        </div>
    </div>
    </div>

    <div class="modal fade" id="modal-detail">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Detail Peminjaman</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="_method" value="PUT" v-if="detail">

          <div class="form-group">
            <label class="col-md-5">Nama Anggota</label> @{{ anggota.nama }}
          </div>

          <div class="form-group">
            <label class="col-md-5">Tanggal</label> @{{ data.tgl_pinjam }} s.d @{{ data.tgl_kembali }} ( @{{ data.lama_pinjam }} hari )
          </div>

          <div class="form-group">
            <label class="col-md-5">Buku</label> 
            <ul>
              <li v-for="buku in data.buku">@{{ buku.judul }} ( Rp. @{{ formatPrice(buku.harga_pinjam) }},- perhari )</li>
            </ul>
          </div>

          <div class="form-group">
            <label class="col-md-5">Status</label> @{{ data.status == 0 ? 'Belum dikembalikan' : 'Sudah dikembalikan' }}
          </div>

        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</component>
@endrole
@endsection

@push('js')
<script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script src="{{ asset('plugins/select2/js/select2.full.min.js') }}"></script>
<script type="text/javascript">
    var actionUrl = '{{ url('data/peminjaman') }}';
    var columns = [{
            data: 'tgl_pinjam',
            class: 'text-center',
            orderable: true
        },
        {
            data: 'tgl_kembali',
            class: 'text-center',
            orderable: true
        },
        {
            render: function(index, row, data, meta) {
                return data.anggota.nama;
            },
            class: 'text-center',
            orderable: true
        },
        {
            data: 'lama_pinjam',
            class: 'text-center',
            orderable: true
        },
        {
            render: function(index, row, data, meta) {
                return data.buku.length;
            },
            class: 'text-center',
            orderable: true
        },
        {
            data: 'total_bayar',
            class: 'text-center',
            orderable: true
        },
        {
            render: function(index, row, data, meta) {
                return data.status == 0 ? '<span class="badge rounded-pill bg-light">Belum dikembalikan</span>' : '<span class="badge rounded-pill bg-success">Sudah dikembalikan</span>'
            },
            class: 'text-center',
            orderable: true
        },
        {
            render: function(index, row, data, meta) {
                return `

                <a href="#" class="btn btn-info btn-sm shadow-sm" onclick="controller.detailData(event, ${meta.row})">
                    Detail
                </a>
                
                <a href="#" class="btn btn-warning btn-sm shadow-sm" onclick="controller.editData(event, ${meta.row})">
                    Edit  
                </a>

                <a href="#" class="btn btn-danger btn-sm shadow-sm" onclick="controller.deleteData(event, ${data.id})">
                    Delete  
                </a>
                `;
            },
            orderable: false,
            width: '100px',
            class: 'text-center'
        }
    ];
</script>
<script src="{{ asset('js/data.js') }}"></script>
<script type="text/javascript">
    $(function() {
        $('.select2').select2()
    })
    $('select[name=status]').on('change', function() {
        status = $(this).val();
        controller.table.ajax.url(actionUrl + '?status=' + status).load();
    })
    $('input[name=date]').on('change', function() {
        date = $(this).val();
        controller.table.ajax.url(actionUrl + '?date=' + date).load();
    })
</script>
@endpush