<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()  
    {       
        $orders = Order::get();             
        dd($orders);
        return view('auth.orders.index');
    }            
}
