@extends('layouts.conquer2')

@section('title')
    Obat Satu Kategori
@endsection

@section('content')
<h2>Medicine</h2> 
    <div class="row">
        @foreach($listdata as $li)
        <div class="col-12 col-md-4">
            <div class="card mb-4">
                <img src="{{ asset ('img/' .$li -> image)}}" 
                width="300px" height="300px" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">{{ $li -> generic_name }}</h5>
                    <p class="card-text">{{ $li -> form }}</p>
                    <p class="card-text">{{ $li -> price }}</p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
@endsection