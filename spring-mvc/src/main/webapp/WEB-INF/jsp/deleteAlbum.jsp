<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verwijder album</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: 1em;">
        
        <h1>Verwijder event</h1>
        <c:url var="albumId" value="${album.id}" />
        <c:url var="actionURL" value="/album/delete.htm?id=${album.id}" />
        <h2>Weet je zeker dat je <c:out value="${album.naam}"/> wilt verwijderen?</h2>
        <form:form modelAttribute="album" action="${actionURL}" method="POST">
            <input type="submit" value="Verwijder!" class="btn btn-danger">
            <a class="btn btn-secondary" href="../${album.id}.htm">Nee, ga terug!</a>
        </form:form>
    </body>
</html>
