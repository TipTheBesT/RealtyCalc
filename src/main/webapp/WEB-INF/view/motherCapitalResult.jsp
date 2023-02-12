<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 15.11.2022
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="content">
  <section class="last">
    <div class="row">
      <div class="col-12 col-12-medium">
        <h2>Результат расчёта</h2>
      </div>
      <div class="col-6 col-12-medium">
        <p><b>Полученные данные:</b></br>
          Стоимость объекта: ${motherCapitalModelResult.price} руб. </br>
          Сумма материнского капитала: ${motherCapitalModelResult.sumMotherCapital} руб. </br>
          Количество членов семьи: ${motherCapitalModelResult.numberFamilyMembers} чел. </br>
        </p>

        <p><b>Итого:</b></br>
          ${motherCapitalModelResult.priceMin} руб. минимальная стоимость доли.</br>
          ${motherCapitalModelResult.partMember} доля в праве долевой собственности, стоимостью ${motherCapitalModelResult.pricePartMember} руб., на имя каждого члена семьи. </br>
          ${motherCapitalModelResult.partParent} дол(я)ей в праве долевой собственности, в совместную собственность супругов или на имя одного из родителей (в случае отсутствия брака).</br>
        </p>
      </div>

      <div class="col-6 col-12-medium">
        <!-- Yandex.RTB R-A-2121732-3 -->
        <div id="yandex_rtb_R-A-2121732-3"></div>
        <script>window.yaContextCb.push(()=>{
          Ya.Context.AdvManager.render({
            renderTo: 'yandex_rtb_R-A-2121732-3',
            blockId: 'R-A-2121732-3'
          })
        })</script>
      </div>


      <div class="col-12 col-12-medium">
        <h2>Конструктор соглашений по МК</h2>
      </div>
      <div class="col-6 col-12-medium">
        <p><b>  Не мучайтесь с расчётом долей, а просто укажите данные в конструкторе и он сгенерирует соглашение в автоматическом режиме!
          А ещё вы получите памятку по подаче соглашения на регистрацию!</b></p>
        <br/>
      </div>

      <div class="col-6 col-12-medium">
        <a href="https://law-treaty.ru" class="button icon solid fa-arrow-circle-right">Составить соглашение</a>
      </div>

      <div class="col-12 col-12-medium">
        <p><b>Заготовка для соглашения или договора:</b>
          <textarea style="width: 100%;" id="template" rows="${motherCapitalModelResult.templateRows}" >${motherCapitalModelResult.template}</textarea>
          <button onclick="copy()" style="width: 100%; padding: 0.4em 0 !important">Скопировать в буфер</button>
        </p>
      </div>
    </div>

      <script>
        function copy() {
          let textarea = document.getElementById("template");
          textarea.select();
          document.execCommand("copy");
        }
      </script>
    </p>
  </section>
</div>
