@extends('layouts.frontend')

@section('title', 'Medicines')

@section('content')

    <div class="container products">

        <div class="row">
            @foreach($medicines as $m)
                <div class="col-xs-18 col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="{{ asset ('img/' .$m -> image)}}" width="230" height="230">
                        <div class="caption">
                            <h4>{{ $m->generic_name }}</h4>
                            <p><strong>Rp. </strong>{{ $m->price }}</p>
                            <a href="{{ url('add-to-cart/' . $m->id )}}" class="btn btn-warning btn-block text-center" role="button">Add to cart</a> </p>
                        </div>
                    </div>
                </div>
            @endforeach

        </div><!-- End row -->

    </div>

@endsection