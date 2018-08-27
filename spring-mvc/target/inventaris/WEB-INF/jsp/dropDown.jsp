<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jeroen
  Date: 27/08/2018
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
