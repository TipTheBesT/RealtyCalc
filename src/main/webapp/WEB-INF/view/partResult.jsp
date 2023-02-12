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
          Стоимость продаваемого объекта: ${partsModelResult.initialObjPrice} руб. </br>
          Площадь продаваемого объекта: ${partsModelResult.initialObjSquare} кв.м. </br>
          Доля в продаваемом объекте: ${partsModelResult.initialObjPartNumerator}/${partsModelResult.initialObjPartDenominator} доля(ей) в праве общей долевой собственности. </br>
          Стоимость приобретаемого объекта: ${partsModelResult.finalObjPrice} руб. </br>
          Площадь приобретаемого объекта: ${partsModelResult.finalObjSquare} кв.м. </br>
        </p>
        <p><b>Расчёт:</b></br>
          Минимальная стоимость доли: ${partsModelResult.partMinPrice} руб.</br>
          Минимальная площадь доли: ${partsModelResult.partMinSquare} кв.м.</br></br>

          <b>Минимальная доля в приобретаемом объекте:</b></br>
          ${partsModelResult.partMin} доля(ей) в праве общей долевой собственности.</br>
          Стоимость доли: ${partsModelResult.partPrice} руб.</br>
          Площадь доли: ${partsModelResult.partSquare} кв.м.</br></br>

          В соответствии с изменениями законодательства РФ от 2022 года, минимальная доля не может быть площадью менее 6 кв.м.
          Если в результате расчёта размер доли менее 6 кв.м., то доля автоматически увеличивается до минимальных 6 кв.м.
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
    </div>

  </section>
</div>
