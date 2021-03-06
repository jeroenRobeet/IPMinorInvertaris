<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Overzicht</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
      
        <c:if test="${fout != null}">
            <div style="background-color: red">
                <c:out value="${fout}" />
            </div>
        </c:if>
        <section id="albums"  style="margin: 1em;">

            <h2>Mijn bomen/planten</h2>

            <div class="well">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Naam plant/boom</th>
                            <th>type plant/boom</th>
                            <th>lengte plant/boom</th>
                            <th> aantal</th>

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
                                <td><a href="${pageContext.request.contextPath}/overview/<c:out value="${plant.id}"/>/verwijder.htm"/> VERWIJDER</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p>Totaal aantal planten/bomen : <c:out value="${totaal}"/></p>
            </div>

        </section>
        <div style="margin: 1.5em;">
            <p>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/overview/addPlant.htm">voeg nieuwe plant/boom toe</a>
            </p>

            <p>

        </p>
    </div>
</body>
</html>