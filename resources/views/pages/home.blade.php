@extends('layouts.app')
@section('title'.'Flight')

@section('content')

<!-- header -->
  <!-- navbar -->
  <div class="container">
    <nav class="row navbar navbar-expand-lg navbar-light bg-white">
    <a href="{{route('home')}}" class="navbar-brand">
    <img src="{{url('frontend/images/Flight.png')}}" alt="logo web"/>
 </a>

<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navigasi">
    <span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navigasi">
    <ul class="navbar-nav ml-auto mr-3">


        <li class="nav-item mx-md-2">
            <a href="" class="nav-link active">Home</a></li>
            <a href="" class="nav-link">Paket Travel</a>
        </li>
           
            <li class="nav-item mx-md-2">
        <a href="" class="nav-link">Testimonial</a>
        </li>
        <li class="nav-item dropdown">
            <a href="" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
                Services
            </a>
             <div class="dropdown-menu">
             <a href="" class="dropdown-item">a</a>
            <a href="" class="dropdown-item">b</a>
            <a href="" class="dropdown-item">c</a>
               </div>
            
        </li>
       
        </ul>
        @guest
<!-- mobile button -->
<form  class="form-inline d-sm-block d-md-none">
            <button class=" btn btn-login  my-2 my-sm-0"type="button" 
            onclick="event.preventDefault(); location.href='{{url('login')}}';">Masuk</button>
                    </form>
             
                    <!-- desktop button -->
                    <form  class="form-inline my-2 my-lg-0 d-none d-md-block">
            <button class=" btn btn-login btn-navbar-right  my-2 my-sm-0 px4"type="button" 
            onclick="event.preventDefault(); location.href='{{url('login')}}';">Masuk</button>
                                </form>

@endguest

@auth
<!-- mobile button -->
     <form  class="form-inline d-sm-block d-md-none" action="{{url('logout')}}" 
      method="POST">
   @csrf
            <button class=" btn btn-login  my-2 my-sm-0" type="submit">
            Keluar
            </button>
            </form>
             
<!-- desktop button -->
   <form  class="form-inline my-2 my-lg-0 d-none d-md-block" action="{{url('logout')}}" 
   method="POST">
      @csrf
<button class=" btn btn-login btn-navbar-right  my-2 my-sm-0 px4"type="submit">Keluar</button>
</form>

@endauth










         
</div>
</nav>   
</div>
<header class="text-center">
    <h1>         Travel is an 
        <br>
        Investment yourself
    </h1>
    <p class="mt-3">
        The journey of a thousand miles begins with a single step
    </p>


    <a href="#popular" class="btn-get-started px-4 mt-4">Get Started</a>
</header>

<main>
    <div class="container ">
        <section class="section-stats  row justify-content-center" id="stats">
            
<div class="col-3 col-md-2 stats-detail">
    <h2>20K</h2>
    <P>Members</P>
</div>
<div class=" col-3 col-md-2 stats-detail">
    <h2>12</h2>
    <P>Countries</P>
</div>
<div class="col-3 col-md-2 stats-detail">
    <h2>3K</h2>
    <P>Hotels</P>
</div>
<div class="col-3 col-md-2 stats-detail">
    <h2>7</h2>
    <P>Partners</P>
</div>
        </section>
    </div>
    <section class="section-popular" id="popular">

        <div class="container">
            <div class="row">
                <div class="col text-center section-popular-heading">
<h2>
    Wisata Populer
</h2>

<p>
    Travel. Your money will return. Your time won’t.
</p>
                </div>
            </div>
        </div>

    </section>
    <section class="section-popular-content" id="popularcontent">
        <div class="container">
            <div class="section-popular-travel row justify-content-center">
                @foreach ($items as $item)
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div 
                    class="card-travel text-center d-flex-column"
        style="background-image: url('{{$item->galleries->count() ? Storage::url
                    ($item->galleries->first()->images):''}}');">
                        <div class="travel-country">{{$item->location}}</div>
                        <div class="travel-location">{{$item->title}}</div>
                        <div class="travel-button mt-auto">
        <a href="{{route('detail', $item->slug)}}" class="btn btn-travel-detail px-4">  
                                View Details
                            </a>
                        </div>
                    </div>
                </div> 

                @endforeach
                
            </div>
        </div>
    </section>
    <section class="section-networks" id="networks">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h2> Official Partners</h2>
                    <p>
                        Companies are trusted us
                        <br>
                        more than just a trip
                    </p>       
                </div>
                    <div class="col-md-8 text-center">
                        <img src="frontend/images/partner.png" alt="Logo Partner" class="img-partner"/>
                    </div>
                
            </div>
        </div>
    </section>

    <section class="section-testimonial-heading" id="testimonialheading">
        <div class="container">
            <div class="row">
<div class="col text-center">
    <h2>
        They're Loving US
    </h2>
    <p>
        people who believe in us
    </p>
</div>
            </div>
        </div>
    </section>

<section class=" section section-testimonial-content" id="testimonialcontent">
    <div class="container">
        <div class="section-popular-travel row justify-content-center">
            <div class="col-sm-6 col-md-6 col-lg-4">
                <div class=" card card-testimonial text-center"> 
                    <div class="testimonial-content">
                        <img src="/frontend/images/testimonial 1.png" alt=" User" class="mb-4 rounded-circle">
                        <h3 class="mb-4">Adi</h3>
                        <p class="testimonial">"The holiday of a life time - our 
gulet adventure  in the Dodecanese 
                                                   Greek Islands"</p>
                    </div>
                    <hr>
                    <p class="trip-to mt-2">
                        Trip to Bali,Indonesia
                    </p>

                </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4">
                <div class=" card card-testimonial text-center"> 
                    <div class="testimonial-content">
                        <img src="/frontend/images/testimonial 2.png" alt=" User" class="mb-4 rounded-circle">
                        <h3 class="mb-4">Sari</h3>
                        <p class="testimonial">                    "I had a wonderful experience with both 
                            the travel company and the actual 9 day 
                                                     trip to  Spain"</p>
                    </div>
                    <hr>
                    <p class="trip-to mt-2">
                        Trip to Barcelona,Spain
                    </p>

                </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-4">
                <div class=" card card-testimonial text-center"> 
                    <div class="testimonial-content">
                        <img src="/frontend/images/testimonial 3.png" alt=" User" class="mb-4 rounded-circle">
                        <h3 class="mb-4">Robert</h3>
                        <p class="testimonial">"The trip was amazing, a once in a lifetime opportunity and trip."</p>
                    </div>
                    <hr>
                    <p class="trip-to mt-2">
                        Trip to Paris,France 
                    </p>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 text-center">
                <a href="" class="btn btn-need-help px-4 mt-4 mx-1"> I need Help</a>
                <a href="{{route('register')}}" class="btn btn-get-startedd px-4 mt-4 mx-1"> Get Started

                </a>
            </div>
        </div>


    </div>  
</section>
</main>




<footer class="section-footer mt-5 mb-4 border-top">
    <div class="container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="row">
<div class="col-12 col-lg-3">
     <h5>Features</h5>
     <ul class="list-unstyled">
         <li><a href=""></a>Review</li>
         <li><a href=""></a>Comunity</li>
         <li><a href=""></a>Social Media Kit</li>
         <li><a href=""></a>Affiliate</li>
     </ul>
     
</div>
<div class="col-12 col-lg-3">
    <h5>Account</h5>
    <ul class="list-unstyled">
        <li><a href=""></a>Refund</li>
        <li><a href=""></a>Security</li>
        <li><a href=""></a>Reward</li>
        
    </ul>
    
</div>
<div class="col-12 col-lg-3">
    <h5>Company</h5>
    <ul class="list-unstyled">
        <li><a href=""></a>Career</li>
        <li><a href=""></a>Help Center</li>
        <li><a href=""></a>Media</li>
        <li><a href=""></a>Affiliate</li>
    </ul>
    
</div>
<div class="col-12 col-lg-3">
    <h5>Features</h5>
    <ul class="list-unstyled">
        <li><a href=""></a>Get Connected</li>
        <li><a href=""></a>Jakarta Selatan</li>
        <li><a href=""></a>Indonesia</li>
        <li><a href=""></a>44444444444</li>
        <li><a href=""></a>abcd@yahoo.com</li>
    </ul>
    
</div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row border-top justify-content-center align-items-center pt-4 col-auto text-gray-500 font-weight-light">
            2019 Copyright Flight.All Right Reserved.Made in Jakarta
        </div>
    </div>
</footer>






@endsection