@extends('layouts.app')

@section('content')
    <div class="container">
        <ul class="list-group">
            @foreach($ads as $ad)
                <li class="list-group-item"><h2>Title</h2> {{ $ad->ads_title }}</li>
                <li class="list-group-item"><h4>latitude</h4>{{ $ad->ads_latitude }}</li>
                <li class="list-group-item"><h4>longitude</h4>{{ $ad->ads_longitude }}</li>
                <li class="list-group-item"><h4>period publication</h4>{{ $ad->ads_period_publication }}</li>
            @endforeach
        </ul>
    </div>


@endsection
