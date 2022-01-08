@extends('auth.layouts.master')

@section('title', 'Заказы')) 

@section('content')
<div class="col-md-12">
   <h1>Заказы</h1>
   <table class="table">
      <tbody>
      <tr>
         <th>
            #
         </th>
         <th>
            Имя
         </th>
         <th>
            Телефон
         </th>
         <th>
            Когда отправляем
         </th>
         <th>
            Сумма
         </th>
         <th>
            Действия
         </th>
      </tr>
      <tr>
         <td>1</td>
         <td>Roman Davydov</td>
         <td>0543219482</td>
         <td>2019.11.12 13:48:55</td>
         <td>71990 руб</td>
         <td>
            <div class="btn-group" role="group">
                <a class="btn btn-success" type="button" href="http://internet-shop.tmweb.ru/admin/orders/1">
                  Открыть
                </a> 
            </div>
         </td>
      </tr>
      </tbody>
   </table>
</div>
@endsection

                            