<%-- 
    Document   : BT_02
    Created on : Oct 16, 2024, 8:36:30 AM
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
        <h1>Tính Diện Tích Chu Vi Hình Chữ Nhật</h1>
        <form action="BT_02.jsp" method="POST">
            <table border ="0">
                <tr>
                    <td>Nhập Chiều Dài: </td>
                    <td><input type="text" name="dai" value="" required=""/></td>

                </tr>
                <tr>
                    <td>Nhập Chiều Rộng: </td>
                    <td><input type="text" name="rong" value="" required="" /></td>

                </tr>
                <tr>
                    <td><input type="submit" value="Tính Toán" />
                        <input type="reset" value="Tiếp Tục" />
                    </td>
                </tr>          
            </table>
            <%
                String dai = request.getParameter("dai");
                String rong = request.getParameter("rong");
                if (dai != null && rong != null) {
                    double d = Double.parseDouble(dai);
                    double r = Double.parseDouble(rong);
                    double dt = d * r;
                    double cv = (d + r) * 2;
            %>
            <hr>
            Diện tích <%=dt%><br>
            Chu Vi <%=cv%><br>
            <%

                }


            %>
        </form>
    </body>
</html>
