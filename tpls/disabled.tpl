{{%define "*"%}}<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Сайт находится на техническом обслуживании</title>
    <meta name="author" content="{{%.MetaAuthor%}}"/>
    <meta name="copyright" content="{{%.MetaCopyright%}}"/>
    <meta name="description" content="{{%.MetaDescription%}}"/>
    <meta name="keywords" content="{{%.MetaKeywords%}}"/>
    {{%range .Meta%}}{{%. | html %}}{{%end%}}

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='shortcut icon' type='image/x-icon' href='///favicon.ico'/>
    <link rel='icon' type='image/png' href='///favicon.png'/>
    <style>
        #center-block {width: 80%; text-align: center; margin: 0 auto; padding-top: 15%;}
    </style>
</head>
<body>
    <div id="center-block">
        <h1>Сайт находится на техническом обслуживании, работа будет восстановлена в ближайшее время.</h1>
        <h2>Извините за неудобства.</h2>
    </div>
</body>
</html>
{{%end%}}
