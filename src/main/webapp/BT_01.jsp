<%-- 
    Document   : BT_01
    Created on : Oct 16, 2024, 8:29:20 AM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chương trinh jsp đầu tiên</h1>
        <form action="BT_01.jsp" method="POST">
            Nhập Họ Tên : <input type="text" name="hoten" value="" required=""/>
            <input type="submit" value="Thi Hành" />
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String hoten = request.getParameter("hoten");
            if (hoten != null) {
        %>
        Chào Bạn : <b><%=hoten%></b>;
        <%
            }
        %>
    </body>
</html>
