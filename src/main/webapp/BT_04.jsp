<%-- 
    Document   : BT_04
    Created on : Oct 16, 2024, 9:28:57 AM
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
        <h1>Đổi Ngoại Tệ</h1>
        <form action="BT_04.jsp" method="POST">
            <table border ="0">
                <tr>
                    <td>Cho Biết Số Tiền : </td>
                    <td><input type="text" name="tien" value="" required=""/></td>

                </tr>          
                <tr>
                    <td>Ngoai Tệ</td>
                    <td>
                        <select name="lngoaite">
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select>
                    </td>
                </tr>
              
                
                
                
                <tr>
                    <td><input type="submit" value="Đổi Tiền" />
                        <input type="reset" value="Tiếp Tục" />
                    </td>
                </tr>          
            </table>
        </form>
        <%
            
              String stien = request.getParameter("tien");
                String lngoaite = request.getParameter("lngoaite");
                if (stien !=null) {
                    double tien =Double.parseDouble(stien);
                    double tienVN=0;
                    
            switch (lngoaite) {
                     
                    case "USD":
                      tienVN = tien*21380;
                        break;
                        case "GPB":
                        tienVN = tien*3262280;
                        break;
                        case "EUR":
                        tienVN = tien*2355567;
                        break;
       
                }
                    out.println(  tienVN);
            }
        %>
    </body>
</html>
