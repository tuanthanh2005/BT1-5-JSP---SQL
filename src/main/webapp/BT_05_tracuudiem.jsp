<%@page import="com.mycompany.mavenproject1.resources.Servlet"%>
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
        <form action="BT_05_tracuudiem.jsp" method="POST">
            Số báo danh: <input type="text" name="sobd" value=""/>
            Họ Tên: <input type="text" name="hoten" value=""/>
            <button type="submit">Tra Cứu</button>
        </form>
        
        <%
        String hoten = request.getParameter("hoten");
        String sobd = request.getParameter("sobd");

        if ((hoten != null && !hoten.trim().isEmpty()) || (sobd != null && !sobd.trim().isEmpty())) {
            try (Connection conn = Servlet.getConnection()) {
                PreparedStatement ps = null;

                // Check if both 'hoten' and 'sobd' are provided, or just one of them
                if (sobd != null && !sobd.trim().isEmpty()) {
                    ps = conn.prepareStatement("SELECT * FROM thisinh WHERE sobd = ?");
                    ps.setString(1, sobd);
                } else if (hoten != null && !hoten.trim().isEmpty()) {
                    ps = conn.prepareStatement("SELECT * FROM thisinh WHERE hoten LIKE ?");
                    ps.setString(1, "%" + hoten + "%");
                }

                try (ResultSet rs = ps.executeQuery()) {
        %>
        <table border="1">
            <tr>
                <th>Số báo danh</th>
                <th>Họ tên</th>
                <th>Địa chỉ</th>
                <th>Điểm toán</th>
                <th>Điểm lý</th>
                <th>Điểm hóa</th>
                <th>Tổng điểm</th>
            </tr>
            <%
                while (rs.next()) {
                    double tongdiem = rs.getFloat("toan") + rs.getFloat("ly") + rs.getFloat("hoa");
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
               <td><%= rs.getString(2) %></td>
                 <td><%= rs.getString(3) %></td>
                <td><%= rs.getFloat(4) %></td>
               <td><%= rs.getFloat(5) %></td>
                <td><%= rs.getFloat(6) %></td>
                <td><%= tongdiem %></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        }
        %>
    </body>
</html>
