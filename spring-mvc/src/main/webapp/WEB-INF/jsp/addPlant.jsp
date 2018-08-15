<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="hoofdtab.toevoegen.titel"/> </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body style="margin: 1em;">
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
        <p><a href="${pageContext.request.contextPath}/overview.htm" class="btn btn-success" ><spring:message code="addPlant.knop.terug"/> </a></p>
        <h1><spring:message code="addPlant.titel"/> </h1>
        <form:form modelAttribute="plant" method="post" action="${pageContext.request.contextPath}/overview.htm" class="form-group">
            <form:hidden path="id"  value="${plant.id}"></form:hidden>
            <form:errors path="naam" class="alert alert-danger" style="display: block;"/><br>
            <label for="naam"><spring:message code="label.naam"/> </label><form:input path="naam" id="naam"/><br><br>

            <form:errors path="type" class="alert alert-danger" style="display: block;"/><br>
            <label for="type"><spring:message code="label.type"/></label><form:input path="type" id="type"/><br><br>

            <form:errors path="lengte" class="alert alert-danger" style="display: block;"/><br>
            <label for="lengte"><spring:message code="label.lengte"/></label><form:input path="lengte" id="lengte"/><br><br>

            <form:errors path="aantal" class="alert alert-danger" style="display: block;"/><br>
            <label for="aantal"><spring:message code="label.aantal"/></label><form:input path="aantal" id="aantal"/><br><br>

            <input type="submit" value="<spring:message code="addPlant.titel"/> " class="btn btn-primary">
        </form:form>
    </body>
</html>
