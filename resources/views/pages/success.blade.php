@extends('layouts.success')
@section('title', 'Checkout Success')

@section('content')
<main>
    <div class="section-success d-flex align-items-center">
<div class="col text-center">
<img src="{{url('/frontend/images/succes.png')}}" alt="">

    <h1>YEAY ! SUCCESS</h1>
    <p>WE SENT YOU EMAIL FOR TRIP ISNTRUCTION
        <br>
        please check
    </p>
    <a href="{{url('/')}}" class="btn btn-home-page mt-3 px-5">
Home Page

    </a>
</div>
    </div>
</main>
@endsection



