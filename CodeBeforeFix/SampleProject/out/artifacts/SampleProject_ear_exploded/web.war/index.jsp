<%@ page import="Sample.HelloWorld" %>
<%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 4/30/17
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Sample JSP page</title>
  </head>
  <body>
  <h3 class="message"><%=HelloWorld.getmessage()%></h3>
  </body>
</html>
