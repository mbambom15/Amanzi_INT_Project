<%-- 
    Document   : view_orders
    Created on : 02 May 2025, 1:50:26 PM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Orders</title>
    </head>
    <body>
        <h1>View orders.</h1>
        <form action="ViewServlet" method="POST">
            <table>
                <tr>
                    <td><input type="submit" value="VIEW"></td>
                </tr>
            </table>
        </form>
        <%
            String message = (String)request.getParameter("message");
        %>
        <p>
            <%=message%>
        </p>
    </body>
</html>
