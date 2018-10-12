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
    <title>Title</title>
</head>
<body>
    <h3>Login:</h3>
    <form action="login.jsp" method="post">
        <div>
            <label for="username">Username:</label>
            <input id="username" name="username" type="text">
        </div>

        <div>
            <label for="password">Password:</label>
            <input id="password" name="password" type="text">
        </div>
        <input type="submit" value="Log In">

</form>

</body>
</html>
