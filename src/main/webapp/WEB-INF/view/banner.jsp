<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.11.2022
  Time: 0:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Banner -->
<div id="banner-wrapper">
  <div id="banner" class="box container">
    <div class="row">
      <div class="col-7 col-12-medium">
        <h2>Чем вы хотите воспользоваться?</h2>
        <p>Сервис предоставляет доступ к различным калькуляторам связанными с недвижимостью. Выберете интересующий вас калькулятор справа или в верхнем меню.</p>
      </div>
      <div class="col-5 col-12-medium">
        <ul>
          <li><a href="/overstatement/" class="button large icon solid fa-arrow-circle-right">Расчёт завышения</a></li>
          <li><a href="/part/" class="button large icon solid fa-arrow-circle-right">Расчёт доли - опека</a></li>
          <li><a href="/motherCapital/" class="button large icon solid fa-arrow-circle-right">Расчёт долей - материнский капитал</a></li>
          <li><a href="/commission/" class="button alt large icon solid fa-arrow-circle-right">Расчёт услуг</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Main -->
<div id="main-wrapper">
  <div class="container">
    <div class="row gtr-200">
      <div class="col-4 col-12-medium">

        <!-- Sidebar -->
        <div id="sidebar">
          <section class="widget thumbnails">
            <div class="grid">
              <div class="col-1"><img width="300" src="/resources/images/news/update.jpg" alt="Что нового?" /></div>
            </div>
          </section>
        </div>

      </div>
      <div class="col-8 col-12-medium imp-medium">
        <!-- Content -->
        <div id="content">
          <section class="last">
            <h2>История обновлений</h2>
            <p>
              <b>19.01.2023 года.</b></br>
                Незначительные правки заголовков полей калькуляторов.</br>
                Правки области размещения рекламных материалов.</br>
            </p>

            <p>
              <b>25.12.2022 года.</b></br>
              Убраны нули по дефолту из всех полей. Мы знали об этом неудобстве, но решение пришло не сразу.</br>
              В каждый калькулятор добавлена кнопка - "Очистить", для того чтобы вы быстрее могли начать новый расчёт.</br>
            </p>

            <p>
              <b>26.11.2022 года.</b></br>
              Добавлен расчёт минимальной доли при приобретении объекта недвижимости с использованием средств материнского капитала.</br>
              Изменено название сайта CalcEasy -> EasyCalc.</br>
              Изменено описание на главной странице.</br>
              Изменена палитра сайта.
            </p>

            <p>
              <b>20.11.2022 года.</b></br>
              Добавлен расчёт доли несовершеннолетнего / недееспособного для органов опеки и попечительства.
            </p>

            <p>
              <b>18.11.2022 года.</b></br>
              Добавлен расчёт сумм при завышении стоимости для банка.
            </p>

            <p>
              <b>14.11.2022 года.</b></br>
              Добавлен расчёт деления услуг для самозанятого агента (между агентом, агентством и юристом).
            </p>

          </section>
        </div>

      </div>
    </div>
  </div>
</div>