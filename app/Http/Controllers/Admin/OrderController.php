<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()  
    {       
        return view('auth.orders.index');
    }            
}
