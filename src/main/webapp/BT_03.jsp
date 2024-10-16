<%-- 
    Document   : BT_03
    Created on : Oct 16, 2024, 8:57:44 AM
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
        <h1>Tính Diện Tích Chu Vi Hình Tròn</h1>
        <form action="BT_03.jsp" method="POST">

            <table border ="0">
                <tr>
                    <td>Nhập Bán Kinh R: </td>
                    <td><input type="text" name="bankinh" value="" required=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Tính Toán" />
                        <input type="reset" value="Tiếp Tục" />
                    </td>
            </table>       
            <%
                String bk = request.getParameter("bankinh");
                if (bk != null) {

                    double r = Double.parseDouble(bk);
                    double dt = Math.PI * r * r;
                    double cv = 2 * Math.PI * r;
                    out.println(dt);
                    out.println(cv);
                }
            %>
        </form>
    </body>
</html>
