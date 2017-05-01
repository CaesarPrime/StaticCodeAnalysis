<%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 4/30/17
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <title> User Logged Successfully </title>
</head>

<body>


Welcome <%= session.getAttribute("username") %>

<% Cookie[] cookies = request.getCookies();
String cookieValue = "";
if(cookies.length > 1)
    cookieValue = cookies[0].getValue();
    out.print(cookieValue);
%>
</body>
</html>
