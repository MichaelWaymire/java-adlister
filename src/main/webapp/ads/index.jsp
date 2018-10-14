<%--
  Created by IntelliJ IDEA.
  User: Michael
  Date: 10/13/18
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/css.css" rel="stylesheet" type="text/css">
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing the ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp"/>

<div class="container boxed">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
</body>
</html>
