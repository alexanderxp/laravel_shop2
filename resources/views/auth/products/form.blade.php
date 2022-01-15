@extends('auth.layouts.master')

@section('title', 'Заказы') 

@section('content')
                <div class="col-md-12">
                    <h1>Добавить товар</h1>
                    <form method="POST" enctype=multipart/form-data
                          action="http://internet-shop.tmweb.ru/admin/products">
                        <div>
                            <input type="hidden" name="_token" value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
                            <div class="input-group row">
                                <label for="code" class="col-sm-2 col-form-label">Код: </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="code" id="code"
                                        value="">
                                </div>
                            </div>
                            <br>
                            <div class="input-group row">
                            <label for="name" class="col-sm-2 col-form-label">Название: </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="name" id="name"
                                        value="">
                                </div>
                            </div>
                            <br>
                            <div class="input-group row">
                            <label for="category_id" class="col-sm-2 col-form-label">Категория: </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="category_id" id="category_id"
                                        value="">
                                </div>
                            </div>
                            <br>
                            <div class="input-group row">
                            <label for="description" class="col-sm-2 col-form-label">Описание: </label>
                                <div class="col-sm-6">
                                    <textarea name="description" id="description" cols="72"
                                        rows="7"></textarea>
                                </div>
                            </div>
                            <br>
                            <div class="input-group row">
                            <label for="image" class="col-sm-2 col-form-label">Картинка: </label>
                                <div class="col-sm-10">
                                    <label class="btn btn-default btn-file">
                                        Загрузить <input type="file" style="display: none;" name="image" id="image">
                                    </label>
                                </div>
                            </div>
                            <br>
                            <div class="input-group row">
                            <label for="price" class="col-sm-2 col-form-label">Цена: </label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" name="price" id="price"
                                        value="">
                                </div>
                            </div>
                            <button class="btn btn-success">Сохранить</button>
                        </div>
                    </form>
                </div>
@endsection