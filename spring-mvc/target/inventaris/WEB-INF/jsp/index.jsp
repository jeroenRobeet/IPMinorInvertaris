<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
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
                <a href="?lang=en">

                    <span><spring:message code="multilang.en"/></span>
                </a>
            </li>

        </ul>
    </li>
        <p><spring:message code="index.welkomstekst"/> </p>

    <p><p><a href="${pageContext.request.contextPath}/overview.htm" class="btn btn-success" ><spring:message code="index.nav"/> </a></p></p>
    </body>
</html>
