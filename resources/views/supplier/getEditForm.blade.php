<form role="form" method='POST' action="{{url('supplier/' .$data->id)}}">
    <div class="modal-header">
        <button type="button" class="close" 
        data-dismiss="modal" aria-hidden="true"></button>
        <h4 class="modal-title">Edit Supplier</h4>
    </div>
    <div class="modal-body">
        @csrf
        @method('PUT')
        <div class="form-body">
            <div class="form-group"> 
                <label >Nama</label> 
                <input type="text" class="form-control" 
                id='name' name='name' value='{{ $data->name }}'> 
            </div>
            <div class="form-group"> 
                <label>Alamat</label> 
                <textarea class="form-control" rows="3" 
                id='address' name='address'
                >{{ $data->address }}</textarea> 
            </div>
        </div>  
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-info">Submit</button> 
        <a href="{{url('supplier')}}" data-dismiss="modal" class="btn btn-default">Cancel</a> 
    </div>
</form>