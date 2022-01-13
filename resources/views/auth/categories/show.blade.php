@extends('auth.layouts.master')

@section('title', 'Категория' . $category->name)

@section('content')
                    <h1>Категория бытовой техники</h1>
                    <table class="table">
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
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>Код</td>
                            <td>appliances</td>
                        </tr>
                        <tr>
                            <td>Название</td>
                            <td>Бытовая техника</td>
                        </tr>
                        <tr>
                            <td>Описание</td>
                            <td>Раздел с бытовой техникой</td>
                        </tr>
                        <tr>
                            <td>Картинка</td>
                            <td><img src="" height="240px"></td>
                        </tr>
                        <tr>
                            <td>Кол-во товаров</td>
                            <td>4</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
@endsection