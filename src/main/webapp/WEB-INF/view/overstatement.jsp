<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.11.2022
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Main -->

<div id="main-wrapper">
  <div class="container">
    <div class="row gtr-200">
      <div class="col-4 col-12-medium">

          <!-- Sidebar -->
          <div id="sidebar">
              <section class="widget thumbnails">
                  <h3>Укажите данные</h3>
                  <div class="grid">
                      <%--@elvariable id="overstatement" type="java"--%>
                      <form:form action="../overstatement/" modelAttribute="overstatement">
                          <div class="param">
                              <div class="param-title">
                                  <h4>Реальная стоимость объекта (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input type="number" path="price" alt=""/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Необходимый ПВ (%)</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input type="number" step="0.01" path="percentInitialPaymentBank"/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Собственные средства (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input  type="number" step="0.01" path="initialPaymentPerson"/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Необходимо заложить в кредит (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input  type="number" step="0.01" path="pawnCash"/>
                              </div>
                          </div>

                          <div class="submit">
                              <input style="margin-top: 25px;" class="button" type="submit" value="Рассчитать"/>
                          </div>
                      </form:form>
                  </div>
              </section>
          </div>

      </div>
      <div class="col-8 col-12-medium imp-medium">

        <jsp:include page="${overstatementResultDefault}"/>

      </div>
    </div>
  </div>
</div>
