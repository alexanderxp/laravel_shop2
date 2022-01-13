<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">

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
                                  <input type="hidden" name="token" value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
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
            </div>
         </div>
     </div>
</div>
</body>
</html>