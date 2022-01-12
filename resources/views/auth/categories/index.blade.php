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
                        <tr>
                            <td>1</td>
                            <td>mobiles</td>
                            <td>Мобильные телефоны</td>
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
                        <tr>
                            <td>2</td>
                            <td>portable</td>
                            <td>Портативная техника</td>
                            <td>
                                <div class="btn-group" role="group">
                                    <form action="http://internet-shop.tmweb.ru/admin/categories/2" method="POST">
                                        <a class="btn btn-success" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/2">Открыть</a>
                                        <a class="btn btn-warning" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/2/edit">Редактировать</a>
                                        <input type="hidden" name="_token" value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input class="btn btn-danger" type="submit" value="Удалить">
                                    </form>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>appliances</td>
                            <td>Бытовая техника</td>
                            <td>
                                <div class="btn-group" role="group">
                                    <form action="http://internet-shop.tmweb.ru/admin/categories/3" method="POST">
                                        <a class="btn btn-success" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/3">Открыть</a>
                                        <a class="btn btn-warning" type="button" 
                                           href="http://internet-shop.tmweb.ru/admin/categories/3/edit">Редактировать</a>
                                        <input type="hidden" name="_token" value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input class="btn btn-danger" type="submit" value="Удалить">
                                    </form>
                                </div>
                            </td>
                        </tr>   
                        </tbody>
                    </table>
                    <a class="btn btn-success" type="button" 
                       href="http://internet-shop.tmweb.ru/admin/categories/create">Добавить категорию</a>
                </div>
@endsection