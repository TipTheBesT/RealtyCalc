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
              <%--@elvariable id="commission" type="java"--%>
              <form:form action="../commission/" modelAttribute="commission">
                <div class="param">
                  <div class="param-title">
                    <h4>Сумма услуг</h4>
                  </div>
                  <div class="param-enter">
                    <form:input type="number" path="price"/>
                  </div>
                </div>
                <div class="param">
                  <div class="param-title">
                    <h4>Процент агента</h4>
                  </div>
                  <div class="param-enter">
                    <form:input type="number" step="0.01" path="percentRealtor"/>
                  </div>
                </div>
                <div class="param">
                  <div class="param-title">
                    <h4>Процент юриста</h4>
                  </div>
                  <div class="param-enter">
                    <form:input  type="number" step="0.01" path="percentLawyer"/>
                  </div>
                </div>

                <div class="submit">
                  <input style="margin-top: 25px;" class="button" type="submit" value="Рассчитать"/>
                </div>
              </form:form>
            </div>
            <!--<a href="#" class="button icon fa-file-alt">More</a>-->
          </section>
        </div>

      </div>
      <div class="col-8 col-12-medium imp-medium">

        <jsp:include page="${commissionResultDefault}"/>

      </div>
    </div>
  </div>
</div>
