@extends('layouts.conquer2')

@section('title')
  Daftar Kategori Obat
@endsection

@section('javascript')
<script>
function showInfo()
{
  $.ajax({
    type:'POST',
    url:'{{route("obat.showInfo")}}',
    data:'_token=<?php echo csrf_token() ?>',
    success: function(data){
       $('#showinfo').html(data.msg)
    }
  });
}
</script>
@endsection

@section('content')
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
<div class="modal fade" id="MyModal" tabindex="-1" role="basic" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content" id="showproducts">
          <div class="modal-header">
              <h4 class="modal-title">Detail medicines</h4>
          </div>
          <div class="modal-body">
              <img src="{{ asset('conquer2/img/ajax-modal-loading.gif') }}" alt="" class="loading">
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
      </div>
  </div>
</div>
<a class="btn btn-default" data-toggle="modal" href="#disclaimer">Disclaimer</a>

<div class="page-bar">
  <ul class="page-breadcrumb">
    <li>
      <i class="fa fa-home"></i>
      <a href="index.html">Home</a>
      <i class="fa fa-angle-right"></i>
    </li>
    <li>
      <a href="#" onclick="showInfo()">Welcome
      <i class="icon-bulb"></a></i>
    </li>
  </ul>
</div>
<div id='showinfo'></div>

<div class="page-toolbar">
    <a href="{{ url('kategori_obat/create') }}" class='btn btn-info' type="button">+ Kategori baru</a>
</div>

<h2>Category</h2>          
  <table class="table table-hover">
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Created at</th>
      <th>Updated at</th>
      <th>List of Medicines</th>
    </tr>
  </thead>
  <tbody>
      @foreach($listdata as $li)
    <tr>
      <td>{{ $li -> name }}</td>
      <td>{{ $li -> description }}</td>
      <td>{{ $li -> created_at }}</td>
      <td>{{ $li -> updated_at }}</td>
      <td>
      <ul>
        @foreach($li -> medicines as $lim)
          <li>{{ $lim -> generic_name }}</li>
        @endforeach
      </ul>
    </td>
    </tr>
      @endforeach
  </tbody>
</table>
@endsection