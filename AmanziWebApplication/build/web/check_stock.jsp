<%-- 
    Document   : check_stock
    Created on : 10 May 2025, 6:13:18 PM
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
        <h1>Check for items out of stock</h1>
        <form action="CheckStockServlet" method="POST">
            <input type="submit" value="FETCH">
        </form>
    </body>
</html>
