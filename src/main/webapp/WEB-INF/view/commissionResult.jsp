<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 15.11.2022
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Content -->
<div id="content">
    <section class="last">
        <h2>Результат расчётов</h2>
        <p>
            <b>Введенные данные:</b></br>
            Сумма услуг: ${commissionResultModel.price} руб. </br>
            Процент агента: ${commissionResultModel.percentRealtor}% </br>
            Процент юриста: ${commissionResultModel.percentLawyer}%</br>
        </p>
        <p>
            <b>Результат расчёта:</b></br>
            Агенство (${commissionResultModel.percentAgency}%): ${commissionResultModel.rubAgency} руб. </br>
            Агент (${commissionResultModel.percentRealtorMinusLawyer}% = ${commissionResultModel.percentRealtor}% агент - ${commissionResultModel.percentLawyer}% юрист): ${commissionResultModel.rubRealtor} руб. </br>
            Юрист (${commissionResultModel.percentLawyer}%): ${commissionResultModel.rubLawyer} руб.
        </p>
    </section>
</div>
