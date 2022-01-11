<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content"m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">

    <title>Админка</title>

    <!-- Scripts -->
    <script src="/js/app.js" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="/css/app.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/admin.css" rel="stylesheet">
</head>
<body>
<div id="app">
    <nav class="navbar navbar-default navbar-expand-md navbar-light navbar-laravel">
        <div class="container">
            <a class="navbar-brand" href="http://internet-shop.tmweb.ru">
                Вернуться на сайт
            </a>

            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="http://internet-shop.tmweb.ru/admin/categories">Категории</a></li>
                    <li><a href="http://internet-shop.tmweb.ru/admin/products">Товары</a></li>
                    <li><a href="http://internet-shop.tmweb.ru/admin/orders">Заказы</a></li>
                </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item dropdown">
                           <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false" v-pre>
                                 Администратор
                           </a>
                           <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                              <a class="dropdown-item" href="http://internet-shop.tmweb.ru/logout"
                                 onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                Выйти
                              </a>
                              <form id="logout-form" action="http://internet-shop.tmweb.ru/logout" method="POST" style="display: none">
                                  <input type="hidden" name="token" value="d7QDs9wqIfjbDPmRnYBPyi5nJYXSvEsQJVGEK2Jg">
                              </form>
                           </div>
                        </li>
                     </ul>
              </div>
        </div>
    </nav>

    <div class="py-4"> 
        <div class="container">
            <div class="row justify-content-center">
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
            </div>
         </div>
     </div>
</div>
</body>
</html>