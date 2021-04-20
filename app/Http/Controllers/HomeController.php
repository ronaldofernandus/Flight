<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TravelPackage;

class HomeController extends Controller
{
//     public function index(Request $request)
//     {
// return view ('pages.home');
//     }

    public function index()
    {

       $items= TravelPackage::with(['galleries'])->get();
return view ('pages.home',[
    'items'=>$items
]);
    }

}


