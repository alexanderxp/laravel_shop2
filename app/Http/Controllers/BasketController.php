<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class BasketController extends Controller
{
    public function basket(){
        return view('basket');
    }
    public function basketPlace(){
        return view('order');
    }
    public function basketAdd($productId)
    {
        $orderId = session('orderId');
        if(is_null($orderId)){
            $orderId = Order::create()->id;
            session(['orderId'=>$orderId]);
        }
        dump($orderId);
    }
}
