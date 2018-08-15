<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title><spring:message code="hoofdtab.overview.titel"/> </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>

    <li class="dropdown language-selector">
        <spring:message code="multilang.taal"/>
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
            <button type="button" class="btn btn-secondary btn-sm"><spring:message code="multilang.kies"/> </button>
        </a>
        <ul class="dropdown-menu pull-center">
            <li>
                <a href="?lang=fr">

                    <span><spring:message code="multilang.fr"/></span>
                </a>
            </li>
            <li>
                <a href="?lang=nl">

                    <span><spring:message code="multilang.nl"/></span>
                </a>
            </li>
            <li>
                <a href="?lang=eng">

                    <span><spring:message code="multilang.eng"/></span>
                </a>
            </li>

        </ul>
    </li>
      
        <c:if test="${fout != null}">
            <div style="background-color: red">
                <c:out value="${fout}" />
            </div>
        </c:if>
        <section id="albums"  style="margin: 1em;">

            <h2><spring:message code="overview.titel"/> </h2>


            <div class="well">
                <table class="table">
                    <thead>
                        <tr>
                            <th><spring:message code="label.naam"/> </th>
                            <th><spring:message code="label.type"/> </th>
                            <th><spring:message code="label.lengte"/> </th>
                            <th><spring:message code="label.aantal"/> </th>

                            <th style="width: 36px;"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${planten}" var="plant">
                            <tr>
                                <td><a href="${pageContext.request.contextPath}/overview/<c:out value="${plant.id}"/>.htm"/> <c:out value="${plant.naam}"/></td>
                                <td><c:out value="${plant.type}"/></td>
                                <td><c:out value="${plant.lengte}"/></td>
                                <td><c:out value="${plant.aantal}"/></td>
                                <td><a href="${pageContext.request.contextPath}/overview/<c:out value="${plant.id}"/>/verwijder.htm"/> <spring:message code="nav.verwijderen"/> </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p>Totaal aantal planten/bomen : <c:out value="${totaal}"/></p>
            </div>

        </section>
        <div style="margin: 1.5em;">
            <p>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/overview/addPlant.htm"><spring:message code="overview.knop.nieuw"/> </a>
            </p>

            <p>

        </p>
    </div>
</body>
</html>