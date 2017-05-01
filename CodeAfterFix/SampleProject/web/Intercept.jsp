<%@ page import="Login_Sources.Login_Approvals" %>
<%@ page import="Login_Sources.Login" %><%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 4/30/17
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Intercept</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");

    Login login = new Login(username, password);
    if((Login_Approvals.validate(login)))
    {
        session.setAttribute("username",username);
        //Cookie c1 = new Cookie("username" , username);
        //esponse.addCookie(c1);
        response.sendRedirect("LocalUser.jsp");

    }
    else
        response.sendRedirect("InvalidLogin.jsp");
%>
</body>
</html>


