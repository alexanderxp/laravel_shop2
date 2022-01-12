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
                    <h1>Добавить категорию</h1>
                    <form method="POST" enctype=multipart/form-data
                          action="http://internet-shop.tmweb.ru/admin/categories">
                        <div>
                            <input type="hidden" name="_token" value="m2SZwWq2bCfl7LFcWk4WN7SXLp1YUTLRv7FcEztt">
                            </div class="input-group row">
                                <label for="code" class="col-sm-2 col-form-label">Код: </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="code" id="code"
                                        value="">
                                </div>
                            </div>
                            <br>
                            </div class="input-group row">
                            <label for="code" class="col-sm-2 col-form-label">Название: </label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="name" id="name"
                                        value="">
                                </div>
                            </div>
                            <br>
                            </div class="input-group row">
                            <label for="code" class="col-sm-2 col-form-label">Описание: </label>
                                <div class="col-sm-6">
                                    <textarea name="description" id="description" cols="72"
                                        rows="7"></textarea>
                                </div>
                            </div>
                            <br>
                            </div class="input-group row">
                            <label for="image" class="col-sm-2 col-form-label">Картинка: </label>
                                <div class="col-sm-10">
                                    <label class="btn btn-default btn-file">
                                        Загрузить <input type="file" style="display: none;" name="image" id="image">
                                    </label>
                                </div>
                            </div>
                            <button class="btn btn-success">Сохранить</button>
                        </div>
                    </form>
                </div>
            </div>
         </div>
     </div>
</div>
</body>
</html>