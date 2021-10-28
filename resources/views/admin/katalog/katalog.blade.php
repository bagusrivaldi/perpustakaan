@extends('layouts.admin')
@section('header', 'Katalog')

@section('content')
<div class="row">
	<div class="col-md-6">
		<div class="card">
        	<div class="card-header">
            	<a href="{{ url('data/katalog/create') }}" class="btn btn-sm btn-primary pull-right">Add Katalog</a>
          	</div>
          	<div class="card-body p-0">
            	<table class="table table-striped">
              		<thead>
		                <tr>
		                  	<th style="width: 10px">#</th>
		                  	<th>Nama Katalog</th>
		                  	<th class="text-right" colspan="2">Action</th>
		                </tr>
	              	</thead>
	              	<tbody>
	              		@foreach($data_katalog as $num => $katalog)
		              	<tr>
							<td>{{ $num+1 }}.</td>
							<td>{{ $katalog->nama }}</td>
							<td class="text-right">
								<a href="{{ url('data/katalog/'.$katalog->id.'/edit') }}" class="btn btn-warning btn-sm">Edit</a>
							</td>
							<td class="text-right" width="50px">
								<form action="{{ url('data/katalog', ['id' => $katalog->id]) }}" method="post">
								    <input class="btn btn-danger btn-sm" type="submit" value="Delete" onclick="return confirm('Are you sure?')">
								    @method('delete')
								    @csrf
								</form>
							</td>
		              	</tr>
		              	@endforeach
	              	</tbody>
	            </table>
			</div>
		</div>
	</div>
</div>
@endsection
