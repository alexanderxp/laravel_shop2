<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OrederController extends Controller
{
    public function index()  
    {       
        return view('auth.orders.index');
    }            
}
