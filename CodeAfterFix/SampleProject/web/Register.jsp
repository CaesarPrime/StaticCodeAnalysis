<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: caesar
  Date: 4/30/17
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>

</head>


<%@ page import="Connection.Connector" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%




    Connection con = Connector.getCon();






%>
<body>
    <form action = "RegisterQuery.jsp" type="post" >
        Username :<input type="text" name="username" id="username" />
        Comment :<input type="text" name="comment" id="comment" />


        <br />
        <input type="submit" name="submit" id="submit" value="submit" />
        <input type="reset" name="reset" id="reset" value="reset" />

    </form>

    <%

        String qry = "select * from CommentBox order by Comment_ID desc";
        PreparedStatement st = con.prepareStatement(qry);
        ResultSet rs1 = st.executeQuery();
    %>

    <%
        while(rs1.next()){
    %>
</br>
    Name : <%=rs1.getString(3) %> </br>
    Comment : <%=rs1.getString(2)  %>

    <%

        }
    %>
</br>
</body>
</html>
