<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update album</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: 1em;">
        <h1>Update album</h1>
        
        <h2>Wijzig album</h2>
        <c:url var="albumId"  value="${album.id}" />
        <form:form modelAttribute="album" method="POST" class="form-group">
            <form:errors path="naam" class="alert alert-danger" style="display: block;"/><br>
            <form:input path="naam" name="naam" />
            
            <form:hidden path="id" value="${albumId}"/><br><br>
            <a class="btn btn-outline-primary" href="../${album.id}.htm">Terug</a>
            <input type="submit" value="Wijzig!" class="btn btn-primary">
            
        </form:form>
    </body>
</html>
