<%-- 
    Document   : BT_05_SQL
    Created on : Oct 16, 2024, 10:53:45 AM
    Author     : trant
--%>

<%@page import="com.mycompany.mavenproject1.DatabaseUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tra Cứu Điểm</h1>
        <form action="BT_05_tracuudiem.jsp"method="POST">
            Số báo danh : <input type="text" name ="sobaodanh" value=""/>
            Họ Tên : <input type="text" name ="hoten" value=""/>
            <button type="submit"> Tra Cứu </button>
        </form>
        
        <%
        String hoten = request.getParameter("hoten");
        if (hoten!=null) {
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                
                conn = DatabaseUtil.getConnection();
                ps = conn.prepareStatement("select * from thisinh where hoten like ?");
                ps.setString(1,"%"+ hoten + "%");
                rs=ps.executeQuery();
            }
        %>
    </body>
</html>
