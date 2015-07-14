{{%define "*"%}}<!DOCTYPE html>
<html lang="ru" ng-app="fond">
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{%.MetaTitle | striptags %}}</title>
    <meta name="author" content="{{%.MetaAuthor%}}"/>
    <meta name="copyright" content="{{%.MetaCopyright%}}"/>
    <meta name="description" content="{{%.MetaDescription%}}"/>
    <meta name="keywords" content="{{%.MetaKeywords%}}"/>

    {{%if .MetaFacebookApp%}}
    <meta property="fb:app_id" content="{{%.MetaFacebookApp%}}"/>
    {{%end%}}
    {{%if .MetaOgImage%}}
    <meta property="og:type" content="website"/>
    <meta property="og:image" content="{{%.MetaOgImage%}}"/>
    {{%end%}}
    {{%if .MetaOgTitle%}}
    <meta property="og:title" content="{{%.MetaOgTitle%}}"/>
    {{%end%}}
    {{%if .MetaOgDescription%}}
    <meta property="og:description" content="{{%.MetaOgDescription%}}"/>
    {{%end%}}

    {{%range .MetaItems%}}{{%. | html %}}{{%end%}}

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='shortcut icon' type='image/x-icon' href='//{{%.Host%}}/favicon.ico'/>
    <link rel='icon' type='image/png' href='//{{%.Host%}}/favicon.png'/>

    <!--<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Noto+Serif|PT+Serif&subset=cyrillic,latin' type='text/css'>-->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/theme.css">

    <script src="/js/jquery-2.1.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/angular.min.js"></script>
    <script src="/js/angular-cookies.min.js"></script>
    <script src="/js/app.js"></script>
</head>
<body ng-controller="pageCtrl as page">

<section id="top" class="container margin-top">
    <div class="row visible-xs text-center">
        <div>
            <a title="Общественное объединение" href="//fondoo.ru/">Фонд Общего Обогащения</a>
        </div>
        <div class="color-gray small">
            {{% "Общественное объединение - изменим мир к лучшему вместе" | typo | html %}}
        </div>
    </div>
    <div class="row hidden-xs">
        <div class="col-xs-12 col-sm-6">
            <div id="slogan">
                <a title="Общественное объединение" href="//fondoo.ru/">Фонд Общего Обогащения</a>
            </div>
            <div id="description" class="color-gray small">
                {{% "Общественное объединение - изменим мир к лучшему вместе" | typo | html %}}
            </div>
        </div>
        <div class="col-sm-6 text-right">
            <a href="//fondoo.ru"><img height="50" src="/images/banner.png"
                                       alt="fondoo.ru - создание общего блага"/></a>
        </div>
    </div>
</section>

<section class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Переключить</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">Фонд</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="//fondoo_ru.livejournal.com/">Блог</a></li>
                    <li><a href="/about">О проекте</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><button class="btn btn-danger" data-toggle="modal" data-target="#redButton">Красная кнопка</button></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</section>

{{% .Content %}}

<section id="info" class="container" ng-controller="subsCtrl as subs" ng-cloak>
    <hr/>
    <div class="row">
        <div class="col-xs-12 col-sm-4">
            <div ng-show="subs.noSubs()">
                <h2>Сообщить мне</h2>

                <form ng-submit="subs.addSubs()">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" ng-model="itemStart">О полноценном запуске проекта
                        </label>
                    </div>
                    <div ng-show="itemStart">
                        <div class="form-group">
                            <input type="text" ng-model="subs.email" ng-required="1" class="form-control"
                                   placeholder="Email">
                        </div>
                        <input type="submit" value="Подписаться" class="btn btn-default"/>
                    </div>
                </form>
            </div>

            <div ng-hide="subs.noSubs()">
                <h2>Вы подписаны</h2>

                <p>Спасибо, что вы подписались!</p>
            </div>
        </div>
        <div class="col-xs-12 col-sm-8">
            <h2>Контактная информация</h2>

            <ul class="list-unstyled">
                <li class="social vk"><span class="hidden-xs">Официальная группа во Вконтакте: </span><a href="http://vk.com/fondoo">http://vk.com/fondoo</a>
                </li>
                <li class="social twitter"><span class="hidden-xs">Официальный канал твиттер: </span><a href="https://twitter.com/fondoo_ru">https://twitter.com/fondoo_ru</a>
                </li>
                <li class="social github"><span class="hidden-xs">Открытая разработка на платформе Github: </span><a
                        href="https://github.com/fondoo">https://github.com/fondoo</a></li>
                <li class="social email"><a href="https://groups.google.com/d/forum/fondoo">Почтовая рассылка</a>
                    (гугл-группы, maillist) - обсуждение по электронной почте
                </li>
            </ul>
            <p>{{% "После подключения к Google-группам, пишите на почтовый адрес <strong>fondoo@googlegroups.com</strong> - ваше сообщение прочтут все, кто подписан на эту группу." | typo | html %}}</p>
        </div>
    </div>
</section>

<footer class="text-center small color-gray margin">
    <p>2015&nbsp;&copy; Общественное достояние</p>
</footer>
{{% if eq .User.Gid 1 %}}
<script src="/js/ckeditor/ckeditor.js" async></script>
{{%end%}}
<div class="modal fade" id="redButton">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header btn-success">
                <h2 class="modal-title">fondoo.ru&nbsp;&mdash; не&nbsp;бизнес-проект</h2>
            </div>
            <div class="modal-body">
                <p>Ключевая цель не&nbsp;погоня за&nbsp;деньгами, а&nbsp;построение общественной организации, которая общими усилиями будет менять мир к&nbsp;лучшему (накопление капитала&nbsp;&mdash; лишь средство для более высоких целей).</p>
                <p>Поскольку общество, как население страны, всегда заинтересовано в&nbsp;стабильности и&nbsp;развитии страны, в&nbsp;отличие от&nbsp;бизнесмена, который заинтересован только в&nbsp;получении прибыли, оно может принимать шаги бесполезные с&nbsp;точки зрения бизнеса, но&nbsp;полезные для всей страны, т.е. общества.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Понятно</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>
{{%end%}}