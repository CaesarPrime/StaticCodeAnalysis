<%@ page import="java.sql.Statement" %>
<%@ page import="Connection.Connector" %>
<%@ page import="java.sql.Connection" %>
<%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 5/1/17
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RegisterQuery</title>
</head>
<body>
    <%
        String comment =request.getParameter("comment");
        String name = request.getParameter("username");

        String submit = request.getParameter("submit");
        try {
            Connection con = Connector.getCon();
            String qry = "Insert Into CommentBox(name, Comment) values ('" + name + "', '" + comment + "' order by Comment_ID)";
            Statement st = con.createStatement();

            st.executeUpdate(qry);


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        response.sendRedirect("Register.jsp");
    %>
</body>
</html>
