  
@extends('layouts.admin')
@section('header', 'Pengarang')

@push('css')
<style type="text/css">
	
</style>
@endpush

@section('content')
<component id="controller">
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
	            	<a href="#" @click="addData()" class="btn btn-sm btn-primary pull-right">Add Pengarang</a>
				</div>
				<div class="card-body p-0">
					<table id="example2" class="table table-striped">
						<thead>
							<tr>
								<th width="30px">No.</th>
								<th>Nama</th>
								<th>Email</th>
								<th>Telp</th>
								<th>Alamat</th>
								<th class="text-right">Action</th>
							</tr>
						</thead>
						<tbody>
							@foreach($data_pengarang as $key => $pengarang)
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $pengarang->nama_pengarang }}</td>
								<td>{{ $pengarang->email }}</td>
								<td>{{ $pengarang->telp }}</td>
								<td>{{ $pengarang->alamat }}</td>
								<td class="text-right">
									<a href="#" @click="editData({{ $pengarang }})" class="btn btn-warning btn-sm">Edit</a>
									<a href="#" @click="deleteData({{ $pengarang->id }})" class="btn btn-danger btn-sm">Delete</a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="modal-default">
		<div class="modal-dialog">
			<div class="modal-content">
			  	<form method="post" :action="actionUrl" autocomplete="off">
					<div class="modal-header">

						<h4 class="modal-title" v-if="!editStatus">Add Pengarang</h4>
						<h4 class="modal-title" v-if="editStatus">Edit Pengarang</h4>

						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="_method" value="PUT" v-if="editStatus">
				  		@csrf

						<div class="form-group">
							<label>Nama Pengarang</label>
							<input type="text" class="form-control" name="nama_pengarang" :value="data.nama_pengarang" required="">
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="text" class="form-control" name="email" :value="data.email" required="">
						</div>
						<div class="form-group">
							<label>Telepon</label>
							<input type="text" class="form-control" name="telp" :value="data.telp" required="">
						</div>
						<div class="form-group">
							<label>Alamat</label>
							<input type="text" class="form-control" name="alamat" :value="data.alamat" required="">
						</div>
					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
			  	</form>
			</div>
		</div>
	</div>
</component>
@endsection

@push('js')
<script type="text/javascript">
	var controller = new Vue({
		el: '#controller',
		data: {
			editStatus: false,
			data: {},
			actionUrl: ''
		},
		mounted: function () {
		},
		methods: {
			addData() {
				this.editStatus = false;
				this.actionUrl = '{{ url('data/pengarang') }}';
				this.data = {};
				$('#modal-default').modal();
			},
			editData(pengarang) {
				this.editStatus = true;
				this.actionUrl = '{{ url('data/pengarang') }}'+'/'+pengarang.id;
				this.data = pengarang;
				$('#modal-default').modal();
			},
			deleteData(id) {
				console.log(id)
				this.actionUrl = '{{ url('data/pengarang') }}';
				if (confirm("Are you sure ?")) {
					axios.post(this.actionUrl+'/'+id, {_method: 'DELETE'}).then(response => {
						location.reload();
					});
				}
			}
		}
	});
</script>
@endpush