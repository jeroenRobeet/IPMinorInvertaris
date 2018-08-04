<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>album toevoegen</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body style="margin: 1em;">
        <p><a href="./overview.htm" class="btn btn-success" >← Terug naar overview</a></p>
        <h1>album toevoegen</h1>
        <form:form modelAttribute="album" method="POST" action="addAlbum.htm" class="form-group">
            <form:errors path="naam" class="alert alert-danger" style="display: block;"/><br>
            <label for="naam">Naam album: </label><form:input path="naam" id="naam"/><br><br>
            <input type="submit" value="Creëer!" class="btn btn-primary"> 
        </form:form>
    </body>
</html>
