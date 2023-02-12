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
        <div class="row">
            <div class="col-12 col-12-medium">
                <h2>Результат расчётов</h2>
            </div>
            <div class="col-6 col-12-medium">
                <h2>Результат расчётов</h2>
                <p>
                    <b>Введенные данные:</b></br>
                    Сумма услуг: ${commissionResultModel.price} руб. </br>
                    Процент агента: ${commissionResultModel.percentRealtor}% </br>
                    Процент юриста: ${commissionResultModel.percentLawyer}%</br>
                </p>
                <p>
                    <b>Результат расчёта:</b></br>
                    Агентство (${commissionResultModel.percentAgency}%): ${commissionResultModel.rubAgency} руб. </br>
                    Агент (${commissionResultModel.percentRealtorMinusLawyer}% = ${commissionResultModel.percentRealtor}% агент - ${commissionResultModel.percentLawyer}% юрист): ${commissionResultModel.rubRealtor} руб. </br>
                    Юрист (${commissionResultModel.percentLawyer}%): ${commissionResultModel.rubLawyer} руб.
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
