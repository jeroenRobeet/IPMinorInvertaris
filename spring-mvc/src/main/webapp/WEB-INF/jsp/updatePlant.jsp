<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>plant/boom updaten</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="margin: 1em;">
<p><a href="${pageContext.request.contextPath}/overview.htm" class="btn btn-success" >← Terug naar overview</a></p>
<h1>Plant/boom updaten</h1>
<form:form modelAttribute="plant" method="post" class="form-group">
    <form:hidden path="id"  value="${plant.id}"></form:hidden>
    <form:errors path="naam" class="alert alert-danger" style="display: block;"/><br>
    <label for="naam">Naam plant/boom: </label><form:input path="naam" id="naam"/><br><br>

    <form:errors path="type" class="alert alert-danger" style="display: block;"/><br>
    <label for="type">type plant/boom: </label><form:input path="type" id="type"/><br><br>

    <form:errors path="lengte" class="alert alert-danger" style="display: block;"/><br>
    <label for="lengte">lengte plant/boom: </label><form:input path="lengte" id="lengte"/><br><br>

    <form:errors path="aantal" class="alert alert-danger" style="display: block;"/><br>
    <label for="aantal">aantal planten/bomen: </label><form:input path="aantal" id="aantal"/><br><br>

    <input type="submit" value="update!" class="btn btn-primary">
</form:form>
</body>
</html>
