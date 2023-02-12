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
                      <%--@elvariable id="parts" type="java"--%>
                      <form:form action="../parts/" modelAttribute="parts">
                          <div class="param">
                              <div class="param-title">
                                  <h4>Стоимость продаваемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input type="number" path="initialObjPrice" alt=""/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Площадь продаваемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input type="number" step="0.01" path="initialObjSquare"/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Доля в продаваемом объекте</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input  cssStyle="width: 40px" type="number" path="initialObjPartNumerator"/> / <form:input  cssStyle="width: 40px" type="number" path="initialObjPartDenominator"/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Стоимость приобретаемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input  type="number" path="finalObjPrice"/>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Площадь приобретаемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <form:input type="number" step="0.01" path="finalObjSquare"/>
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

        <jsp:include page="${partsResultDefault}"/>

      </div>
    </div>
  </div>
</div>
