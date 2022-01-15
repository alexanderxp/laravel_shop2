@extends('auth.layouts.master')                          

@section('title', 'Продукт ' . $product->name)             

@section('content')                                                                               
                <div class="col-md-12">

                    <h1>iPhone X 64GB</h1>
                    <table class='table'>
                        <tbody>
                        <tr>
                            <th>
                                Поле
                            </th>
                            <th>
                                Значение
                            </th>
                        </tr>
                        <tr>
                            <td>ID</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>Код</td>
                            <td>iphone_x_64</td>
                        </tr>
                        <tr>
                            <td>Название</td>
                            <td>iPhone X 64GB</td>
                        </tr>
                        <tr>
                            <td>Описание</td>
                            <td>Отличный продвинутый телефон с памятью на 64 gb</td>
                        </tr>
                        <tr>
                            <td>Картинка</td>
                            <td><img src="http://internet-shop.tmweb.ru/storage/products/bosch.jpg" height="240px"></td>
                        </tr>
                        <tr>
                            <td>Категория</td>
                            <td>Мобильные телефоны</td>
                        </tr>
                   </tbody>
               </div>
@endsection 