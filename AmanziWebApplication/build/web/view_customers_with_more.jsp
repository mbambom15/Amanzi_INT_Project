<%-- 
    Document   : view_customers_with_more
    Created on : 10 May 2025, 5:12:32 PM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Click below to get clients with more than one order</h1>
        <form action="customersmorethanservlet" method="POST">
            <table>
                <td><input type="submit" value="FETCH"</td>
            </table>
        </form>
    </body>
</html>
