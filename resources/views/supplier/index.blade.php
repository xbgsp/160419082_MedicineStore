@extends('layouts.conquer2')

@section('title')
  Daftar Suppliers
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

function getEditForm(id) 
{
    $.ajax({
        type:'POST',
        url:'{{route("supplier.getEditForm")}}',
        data:{'_token':'<?php echo csrf_token() ?>',
            'id':id
            },
        success: function(data){
        $("#modalContent").html(data.msg);
        }
    });
}

function getEditForm2(id) 
{
    $.ajax({
        type:'POST',
        url:'{{route("supplier.getEditForm2")}}',
        data:{'_token':'<?php echo csrf_token() ?>',
            'id':id
            },
        success: function(data){
        $("#modalContent").html(data.msg);
        }
    });
}

function saveDataUpdateTD(id) 
{
    var eName=$('#eName').val();
    var eAddress=$('#eAddress').val();
    $.ajax({
        type:'POST',
        url:'{{route("supplier.saveData")}}',
        data:{'_token':'<?php echo csrf_token() ?>',
            'id':id,
            'name':eName,
            'address':eAddress
            },
        success: function(data){
            if(data.status == "ok")
            {
                alert(data.msg)
                $('#td_name' + id).html(eName);
                $('#td_address' + id).html(eAddress);
            }
        }
    });
}

function deleteDataRemoveTR(id) 
{
    $.ajax({
        type:'POST',
        url:'{{route("supplier.deleteData")}}',
        data:{'_token':'<?php echo csrf_token() ?>',
            'id':id
            },
        success: function(data){
            if(data.status == "ok")
            {
                alert(data.msg)
                $('#tr_' + id).remove();
            }
            else 
            {
                alert(data.msg)
            }
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

@if (session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif

<div class="modal fade" id="modalCreate" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" >
            <form role="form" method='POST' action="{{url('supplier')}}">
                <div class="modal-header">
                    <button type="button" class="close" 
                    data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Add New Supplier</h4>
                </div>
                <div class="modal-body">
                        @csrf 
                        <div class="form-body">
                            <div class="form-group"> 
                                <label >Nama</label> 
                                <input type="text" class="form-control" 
                                id='name' name='name'> 
                            </div>
                            <div class="form-group"> 
                                <label>Alamat</label> 
                                <textarea class="form-control" rows="3" 
                                id='address' name='address'
                                ></textarea> 
                            </div>
                        </div>  
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-info">Submit</button> 
                    <a href="{{url('supplier')}}" data-dismiss="modal" class="btn btn-default">Cancel</a> 
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modalEdit" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modalContent"></div>
    </div>
</div>

<div class="page-toolbar">
    <a href="{{ url('supplier/create') }}" class='btn btn-info' type="button">+ Supplier baru</a>
    <a href="#modalCreate" data-toggle='modal' class='btn btn-info'>+ Supplier baru (modal)</a>
</div><br>

<table class='table'>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Logo</th>
        </tr>
    </thead>
    <tbody>
    @foreach($listdata as $d)
    <tr id='tr_{{ $d->id }}'>
        <td>{{ $d->id }}</td>
        <td class="editable" id='td_name_{{ $d->id }}'>{{ $d->name }}</td>
        <td class="editable" id='td_address_{{ $d->id }}'>{{ $d->address }}</td>
        <td id='td_logo_{{ $d->logo }}'>
            <img height="50px" src="{{ asset ('img/' .$d -> logo) }}">

        <div class="modal fade" id="modalChange_{{ $d->id }}" tabindex="-1" role="basic" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" >
                    <form role="form" method='POST' action="{{ route('supplier.changeLogo') }}" enctype='multipart/form-data'>
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Change Logo</h4>
                        </div>
                        <div class="modal-body">
                            @csrf 
                            <div class="form-group"> 
                                <label>Logo</label> 
                                <input type="file" class="form-control" id='logo' name='logo'/>
                                <input type='hidden' id='id' name='id' value='{{ $d->id }}'/> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-info">Submit</button> 
                            <a data-dismiss="modal" class="btn btn-default">Cancel</a> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <br><a href='#modalChange_{{ $d->id }}' data-toggle='modal' class='btn btn-default'>Change</a>
        </td>

        <td>
            <a href="{{ url('supplier/'.$d->id.'/edit') }}" class='btn btn-xs btn-info'>Edit</a>
            <a href="#modalEdit" data-toggle='modal' class='btn btn-warning btn-xs' onclick="getEditForm({{ $d->id }})">+ Edit A</a>
            <a href="#modalEdit" data-toggle='modal' class='btn btn-warning btn-xs' onclick="getEditForm2({{ $d->id }})">+ Edit B</a>
        </td>
        <td>
        @can ('delete-permission', $d)
            <form method='POST' action="{{ url('supplier/'.$d->id) }}">
                @csrf
                @method('DELETE')
                <input type="submit" value="Delete" class="btn btn-danger btn-xs" onclick="if(!confirm('Are you sure to delete this record?')) return false;"/>
                <a class='btn btn-danger btn-xs' onclick="if(confirm('Are you sure to delete this record?'))
                deleteDataRemoveTR({{ $d->id }})">Delete 2 </a>
            </form>
        @endcan
        </td>
    </tr>
    @endforeach
    </tbody>
</table>
@endsection

@section('initialscript')
<script>
    $('.editable').editable({
        closeOnEnter : true,
        callback:function(data) {
            if(data.content) {
                alert(data.content);

                var s_id = data.$el[0].id;
                var fname = s_id.split('_')[1];
                var id = s_id.split('_')[2];
                
                $.ajax({
                    type:'POST',
                    url:'{{ route("supplier.saveDataField") }}',
                    data:{
                        '_token':'<?php echo csrf_token() ?>',
                        'id':id,
                        'fname':fname,
                        'value':data.content
                    },
                    success: function(data) {
                        alert(data.msg)
                    }
                });
            }
        }
    });
</script>
@endsection