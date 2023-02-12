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
    <h2>Результат расчёта</h2>
    <p><b>Полученные данные:</b></br>
      Стоимость объекта: ${overstatementResultModel.price} руб. </br>
      Процент ПВ банка: ${overstatementResultModel.percentInitialPaymentBank}% </br>
      Собственные средства заемщика: ${overstatementResultModel.initialPaymentPerson} руб. </br>
      Требуется заложить в ипотеку для возврата продавцу: ${overstatementResultModel.pawnCash} руб. </br>
    </p>
    <p><b>C учётом завышения:</b></br>
      Стоимость объекта: ${overstatementResultModel.priceBank} руб.</br>
      Сумма ПВ: ${overstatementResultModel.initialPaymentBank} руб.</br>
      Сумма кредитных средств: ${overstatementResultModel.creditBank} руб.</br>
    </p>

  </section>
</div>
