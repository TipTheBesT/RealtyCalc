<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                      <form action="../motherCapital/" method="POST">
                          <div class="param">
                              <div class="param-title">
                                  <h4>Стоимость объекта<br/> недвижимости (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="motherCapitalModel.price">
                                      <input placeholder="2000000"
                                             type="number"
                                             step="0.01"
                                              <core:if test="${status.value != 0.0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Сумма материнского<br/> капитала (рубли)</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="motherCapitalModel.sumMotherCapital">
                                      <input placeholder="453026"
                                             type="number"
                                             step="0.01"
                                              <core:if test="${status.value != 0.0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                              </div>
                          </div>
                          <div class="param">
                              <div class="param-title">
                                  <h4>Количество членов семьи</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="motherCapitalModel.numberFamilyMembers">
                                      <input placeholder="4"
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
                          <a href="../motherCapital/" style="margin-top: 10px;" class="button alt">Очистить</a>

                      </form>
                  </div>
              </section>
          </div>
      </div>
      <div class="col-8 col-12-medium imp-medium">

        <jsp:include page="${motherCapitalResultDefault}"/>

      </div>
    </div>
  </div>
</div>
