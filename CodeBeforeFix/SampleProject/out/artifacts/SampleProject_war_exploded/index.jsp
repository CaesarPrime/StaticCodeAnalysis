
<%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 4/30/17
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    %>


<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Login</title>
</head>
<body>
<h1>Please Login</h1>
<form action="Intercept.jsp" method="get" >
  Username: <input type="text" name="username" value="" /><br />
  Password: <input type="password" name="password" value="" /><br />
  <input type="submit" value="Login" />
  <input type="button" value="Make a Guest Comment" name="comment" id="comment" onclick="location.href='Register.jsp'" />
</form>
</body>
</html>
