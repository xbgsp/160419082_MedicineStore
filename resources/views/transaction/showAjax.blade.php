<div class='portlet'>
    <div class="portlet-title">
        <b>Tampilan transaksi dari: {{ $data->id }} - {{ $data->transaction_date }}</b>
    </div>
    <div class="portlet-body">
        <div class="row">
            @foreach($medicine as $m)
            <div class="col-md-4">
                <div class="thumbnail">
                <img src="{{ asset ('img/' .$m -> image)}}" style="width:100px; height:100px;">
                    <div class="caption">
                        <p align="center"><b>{{ $m->generic_name }}</b></p>
                        <hr/>
                        <p>Kategori: {{ $m->category->name }}</p>
                        <p>Harga: Rp. {{ $m->price }} ,- </p>
                        <p>Jumlah Beli: {{ $m->pivot->quantity }}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>