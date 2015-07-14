{{%define "*"%}}
    <section id="intro" class="container">
        <div class="row">
            <h1 class="text-center">Добро пожаловать!</h1>

            <div class="col-xs-12 col-sm-4 color-gray text-center">
                <p><span class="rednum">1</span></p>
                <p>{{% "Еще полтора века назад известный немецкий мыслитель, философ, социолог показал, что вся история  человечества есть результат развития экономических отношений. Община, феодальный строй, крестьянство, коммунизм, капитализм - все есть формы организации экономических отношений общества."  | typo | html %}}</p>
            </div>
            <div class="col-xs-12 col-sm-4 color-gray text-center">
                <p><span class="rednum">2</span></p>
                <p>{{% "Получается, что экономика является непосредственным (и вероятно главным) участником развития общества (человечества). Из этого следует, что любой проект, пытающийся развить общество, неизбежно по своей природе будет экономическим. Это касается и проекта fondoo.ru" | typo | html %}}</p>
            </div>
            <div class="col-xs-12 col-sm-4 color-gray text-center">
                <p><span class="rednum">3</span></p>
                <p>{{% "Задача fondoo.ru организовать законное саморазвивающиеся сообщество, само определяющее свои цели и пути их достижения, не перекладывая ответственность на что-то другое." %}}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-4" ng-controller="pubsCtrl as pubs">
                <h2><span class="darr-before"></span>Публикации</h2>
                <ul class="list-unstyled list-dashed ng-cloak">
                    <li ng-repeat="pub in pubs.pubs"><a href="{{pub.link}}">{{pub.title}}</a> <small class="color-gray">({{pub.pubdate}})</small></li>
                </ul>
            </div>

            <div class="col-xs-12 col-sm-4">
                <h2>Статус проекта</h2>
                <p><span class="rarr-before"></span><a href="https://github.com/fondoo">В разработке</a></p>
                <p class="small color-gray"><a
                        href="https://github.com/fondoo/docs#Участие-в-разработке">Принять участие</a> в разработке может любой.</p>
                <p class="small color-gray">Разрабатывается: этот сайт, система народных советов, графические материалы, статьи и документы (манифест, устав), правила системы, словом весь проект.</p>
            </div>

            <div class="col-xs-12 col-sm-4">
                <h2><span class="darr-before"></span>Цель <small>(узнать <a href="/about#true">истинные цели</a>)</small></h2>

                <p>Организовать общество <a href="http://fondoo-ru.livejournal.com/1000.html">в системе советов</a> аудиторией не менее 100 тыс. ч.</p>

                <div class="small color-gray">
                    <ul class="list-unstyled list-dashed">
                        <li>Замыкания на себя экономических отношений с народом</li>
                        <li>Увеличение доли организации в отраслях хозяйства страны</li>
                        <li>Увеличение доли народа в организации</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="content" class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                <img class="img-responsive" src="/images/spnsh.png"
                     alt="Силовой дуэт Сергея Попова и Николая Щербакова"/>
            </div>
        </div>
    </section>
{{%end%}}
