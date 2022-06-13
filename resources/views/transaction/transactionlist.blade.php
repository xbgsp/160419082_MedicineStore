@extends('layouts.conquer2')

@section('title')
  Daftar Transaksi
@endsection

@section('javascript')
<script>
function getDetailData(id)
    {
    $.ajax({
        type:'POST',
        url:'{{route("transaction.showAjax")}}',
        data:'_token=<?php echo csrf_token() ?> &id=' + id,
        success: function(data){
        $("#msg").html(data.msg);
        }
    });
    }
</script>
@endsection

@section('content')
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 align='center'><b>Rincian Pembelian</b></h4>
            </div>
            <div class="modal-body" id="modal-body">
                <div>
                    <div id="msg"></div>
                </div>
            </div>
        </div>
    </div>
</div>

@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif

<div class="page-toolbar">
      <a href="{{ url('transaksi/create') }}" class='btn btn-info' type="button">+ Transaksi baru</a>
</div><br>

<table class='table'>
    <thead>
        <tr>
            <th>ID</th>
            <th>Pembeli</th>
            <th>Tanggal Transaksi</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($transaction as $d)
    <tr>
        <td>{{ $d->id }}</td>
        <td>{{ $d->user->name }}</td>
        <td>{{ $d->created_at }}</td>
        <td>
            <a class="btn btn-default" data-toggle="modal" data-target="#modal" onclick="getDetailData({{$d->id}});">Lihat Rincian Pembelian</a>
        </td>
    </tr>
    @endforeach
    </tbody>
</table>
@endsection