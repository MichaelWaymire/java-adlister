<%--
  Created by IntelliJ IDEA.
  User: Michael
  Date: 10/11/18
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
//log in checker
if (request.getMethod().equalsIgnoreCase("post")) {
    //takes in the parameter for username
    String username = request.getParameter("username");
    //takes in the parameter for password
    String password = request.getParameter("password");
    //checks to see if the username is admin and password is password
    if(username.equals("admin") && (password.equals("password")) ){
        response.sendRedirect("profile.jsp");

    }
}

%>
<html>
<head>



</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
