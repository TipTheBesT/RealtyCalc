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
                      <%--@elvariable id="part" type="java"--%>
                      <form action="../part/" method="POST" >
                          <div class="param">
                              <div class="param-title">
                                  <h4>Стоимость продаваемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="part.initialObjPrice">
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
                                  <h4>Площадь продаваемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="part.initialObjSquare">
                                      <input placeholder="50.2"
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
                                  <h4>Доля в продаваемом объекте</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="part.initialPart.numerator">
                                      <input placeholder="1"
                                             style="width: 40px"
                                             type="number"
                                              <core:if test="${status.value != 0}">
                                                  value="${status.value}"
                                              </core:if>
                                             name="<c:out value="${status.expression}"/>" />
                                  </spring:bind>
                                  /
                                  <spring:bind path="part.initialPart.denominator">
                                      <input placeholder="5"
                                             style="width: 40px"
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
                                  <h4>Стоимость приобретаемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="part.finalObjPrice">
                                      <input placeholder="3000000"
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
                                  <h4>Площадь приобретаемого объекта</h4>
                              </div>
                              <div class="param-enter">
                                  <spring:bind path="part.finalObjSquare">
                                      <input placeholder="60.2"
                                             type="number"
                                             step="0.01"
                                              <core:if test="${status.value != 0.0}">
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
                          <a href="../part/" style="margin-top: 10px;" class="button alt">Очистить</a>
                      </form>
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
