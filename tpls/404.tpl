{{%define "*"%}}<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{%.MetaTitle%}}</title>
    <meta name="author" content="{{%.MetaAuthor%}}"/>
    <meta name="copyright" content="{{%.MetaCopyright%}}"/>
    <meta name="description" content="{{%.MetaDescription%}}"/>
    <meta name="keywords" content="{{%.MetaKeywords%}}"/>
    {{%range .Meta%}}{{%. | html %}}{{%end%}}

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='shortcut icon' type='image/x-icon' href='///favicon.ico'/>
    <link rel='icon' type='image/png' href='///favicon.png'/>
</head>
<body>
<h1>Cтраница не найдена</h1>
<p>Возможно вы сделали опечатку в адресе или страница была перемещена.</p>
<p>Вернуться на предыдущую страницу или на <a href="http://{{%.Host%}}">главную сайта</a>.</p>

</body>
</html>
{{%end%}}