@extends('layouts.conquer2')

@section('title')
    Tambah Supplier
@endsection

@section('content')
<form method="POST" action="{{route('supplier.store')}}" class="form-horizontal" role="form" enctype="multipart/form-data">
    @csrf
    <div class="form-body">
        <h3 align='center'>Tambah Supplier Baru</h3><br>
        <div class="form-group">
            <label class="col-md-3 control-label">Name</label>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-user"></i>
                    </span>
                    <input id="name" name="name" type="text" class="form-control" placeholder="Name">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Address</label>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-envelope"></i>
                    </span>
                    <input id="address" name="address" type="text" class="form-control" placeholder="Address">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">Logo</label>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-image"></i>
                    </span>
                    <input type="file" class="form-control" id="logo" name="logo" placeholder="Logo">
                </div>
            </div>
        </div>
    </div>
    <div class="form-actions">
        <div class="row">
            <div class="col-md-offset-3 col-md-9">
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="button" class="btn btn-default">Cancel</button>
            </div>
        </div>
    </div>
</form>
@endsection