<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Album</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/extra.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: 1em;">

        <p><a href="../overview.htm" class="btn btn-success" >← Terug naar overview</a></p>
        <h1><c:out value="${album.naam}" /></h1>

        <c:if test="${!empty album.fotos}">

            <div class="row">
                <c:forEach var="foto" items="${album.fotos}">
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <a href="#" class="thumbnail">
                            <img src="<c:out value="${album.id}"/>/foto/<c:out value="${foto.filename}"/>.htm" class="img-responsive">
                        </a>
                    </div>
                </c:forEach>
            </div>              
        </c:if>

        <div class="form-control" style="height: auto;">
            <h4>Foto's toevoegen</h4> 
            <c:url var="albumId" value="${album.id}" />
            <form:form  action="${albumId}/uploadFoto.htm?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
                <input type="file" name="foto" multiple><br>
                <input type="submit" value="Uploaden!" class="btn btn-success" style="margin-bottom: 1em;">
            </form:form>
        </div>
            <br><br>
        <p><a class="btn btn-success" href="<c:out value="${ablum.id}"/>/update.htm">Wijzigen</a> <a class="btn btn-danger" href="<c:out value="${album.id}"/>/delete.htm">Verwijderen</a></p>
        <p>Totale grootte van alle fotos: <c:out value="${album.totaleGrootte}"/> Bytes</p>
    </body>
</html>