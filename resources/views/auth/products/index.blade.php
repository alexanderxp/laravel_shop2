@extends('auth.layouts.master')

@section('title', 'Товары') 

@section('content')
                <div class="col-md-12">
                <h1>Товары</h1>
                    <table class="table">
                        <tbody>
                         <tr>
                            <th>
                                #
                            </th>
                            <th>
                                Код
                            </th>
                            <th>
                                Название
                            </th>
                            <th>
                                Категория
                            </th>
                            <th>
                                Цена
                            </th>
                            <th>
                                Действия
                            </th>
                        </tr>
                        @foreach($products as $product)
                        <tr>
                        <td>{{ $product->id }}</td>       
                        <td>{{ $product->code }}</td>       
                        <td>{{ $product->name }}</td>        
                        <td>{{ $product->category->name }}</td>  
                        <td>{{ $product->price }}</td>           
                            <td>
                                <div class="btn-group" role="group">
                                    <form action="http://internet-shop.tmweb.ru/admin/products/1" method="POST">
                                        <a class="btn btn-success" type="button" 
                                           href="{{ route('products.show', $product) }}">Открыть</a>
                                        <a class="btn btn-warning" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/products/1/edit">Редактировать</a>
                                        <input type="hidden" name="_token" 
                                           value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input class="btn btn-danger" type="submit" value="Удалить">
                                    </form>
                                </div>
                            </td>
                        </tr>
                        @endforeach
                        
                        </tbody>
                    </table>
                    <a class="btn btn-success" type="button" 
                        href="{{ route('products.create') }}">Добавить товар</a>
                </div>
@endsection