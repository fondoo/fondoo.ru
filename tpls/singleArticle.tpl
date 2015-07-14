{{%define "*"%}}
    <section class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-8">
                <h1 data-url="/ajax/cksaver/article/{{% .Article.id %}}/title">{{% .Article.title | html%}}</h1>
                <div data-url="/ajax/cksaver/article/{{% .Article.id %}}/content">
                    {{% .Article.content | html%}}
                </div>
            </div>

            <div class="col-xs-12 col-sm-4">
                <h2 class="hbar">Требования к фонду</h2>
                <ul class="list-unstyled list-dashed">
                    <li>Организация должна быть доходной</li>
                    <li>Не спекулятивная, а производственная деятельность</li>
                    <li>Борьба за светлые идеи</li>
                    <li>Полезность для страны, населения (не только для самого общества)</li>
                    <li>Простота, ясность и понятность для каждого</li>
                </ul>
                <h2 class="hbar">Цели</h2>
                <ul class="list-unstyled list-dashed">
                    <li>Замыкания на себя экономических отношений с народом</li>
                    <li>Увеличение доли народа в организации</li>
                    <li>Увеличение доли организации в отраслях хозяйства страны</li>
                </ul>
                <h2 class="hbar">Организация общества</h2>
                <ul class="list-unstyled list-dashed">
                    <li>Максимальная автоматизация</li>
                    <li>Самоуправление в системе народных советов (<a href="http://fondoo-ru.livejournal.com/1000.html">1</a>, <a href="//vk.com/doc-97294749_406389105?dl=7260e25fc4142f5f4c">2</a>)</li>
                    <li>Участники - только физические лица</li>
                    <li>Полное равноправие участников</li>
                    <li>Полная открытость общества</li>
                    <li>Определение ясных целей обществом (важность цели)</li>
                </ul>
                <h2 class="hbar">Мотивация для людей</h2>
                <ul class="list-unstyled list-dashed">
                    <li>Денежная, получение дохода (вероятно маленького)</li>
                    <li>Опыт инвестора, акционера, участия в большом проекте</li>
                    <li>Вера в светлое будущее</li>
                    <li>Удовлетворение желания изменить мир к лучшему</li>
                    <li>Патриотичная</li>
                </ul>


            </div>
        </div>
    </section>
{{%end%}}
