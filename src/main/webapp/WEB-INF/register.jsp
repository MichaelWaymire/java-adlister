<%--
  Created by IntelliJ IDEA.
  User: Michael
  Date: 10/17/18
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Register For Our Site!" />
        </jsp:include>
</head>
<body>

    <div class="container">
        <h3>Please fill out the Registration Form</h3>
        <%--Form to be used when a user created an account--%>
        <form action="/register" method="post">

        <%--UserName--%>
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>

        <%--Email--%>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>

        <%--Password--%>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>

        <%--Confirm Password--%>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>

        <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>

</body>
</html>
