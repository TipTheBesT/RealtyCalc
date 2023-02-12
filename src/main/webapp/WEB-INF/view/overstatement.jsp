<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
                      <form action="../overstatement/" method="POST" modelAttribute="overstatement">
                          <div class="param">
                              <div class="param-title">
                                  <h4>Реальная стоимость<br/> объекта (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="overstatement.price">
                                      <input placeholder="2000000"
                                             type="number"
                                              <core:if test="${status.value != 0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Необходимый ПВ (%)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="overstatement.percentInitialPaymentBank">
                                      <input placeholder="20"
                                             type="number"
                                              <core:if test="${status.value != 0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Собственные средства (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="overstatement.initialPaymentPerson">
                                      <input placeholder="200000"
                                             type="number"
                                              <core:if test="${status.value != 0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Необходимо заложить<br/> в кредит (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="overstatement.pawnCash">
                                      <input placeholder="100000"
                                             type="number"
                                              <core:if test="${status.value != 0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>

                          <div class="errors">
                              ${errors}
                          </div>

                          <div class="submit">
                              <input style="margin-top: 25px;" class="button" type="submit" value="Рассчитать"/>
                          </div>
                          <a href="../overstatement/" style="margin-top: 10px;" class="button alt">Очистить</a>
                      </form>
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
