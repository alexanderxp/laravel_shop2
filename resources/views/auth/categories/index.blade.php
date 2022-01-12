@extends('auth.layouts.master')

@section('title', 'Заказы') 

@section('content')
                <div class="col-md-12">
                    <h1>Категории</h1>
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
                                Действия
                            </th>
                        </tr>   
                        @foreach($categories as $category)          
                        <tr>
                        <td>{{ $category->id }}</td>
                        <td>{{ $category->code }}</td>
                        <td>{{ $category->name }}</td>
                            <td>
                                <div class="btn-group" role="group">
                                    <form action="http://internet-shop.tmweb.ru/admin/categories/1" method="POST">
                                        <a class="btn btn-success" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/1">Открыть</a>
                                        <a class="btn btn-warning" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/1/edit">Редактировать</a>
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
                       href="http://internet-shop.tmweb.ru/admin/categories/create">Добавить категорию</a>
                </div>
@endsection