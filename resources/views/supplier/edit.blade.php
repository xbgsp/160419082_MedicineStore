@extends('layouts.conquer2')

@section('title')
    Edit Supplier
@endsection

@section('content')
<form method="POST" action="{{ url('supplier/'. $data->id) }}" class="form-horizontal">
    @csrf
    @method("PUT")
    <div class="form-body">
        <h3 align='center'>Edit Supplier</h3><br>
        <div class="form-group">
            <label class="col-md-3 control-label">Name</label>
            <div class="col-md-4">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="fa fa-user"></i>
                    </span>
                    <input id="name" name="name" value="{{ $data->name }}" type="text" class="form-control" placeholder="Name">
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
                    <input id="address" name="address" value="{{ $data->address }}" type="text" class="form-control" placeholder="Address">
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