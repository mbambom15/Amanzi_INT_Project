<%-- 
    Document   : menu
    Created on : 07 May 2025, 1:32:24 PM
    Author     : khuts
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manger Menu Page</title>
    </head>
    <body>
        <h1>Manager's Menu</h1>
        <li><a href="add_product.jsp">add product</a></li>
        <li><a href="view_orders.jsp">View Orders</a></li>
        <li><a href="edit_product.jsp">Edit Products</a></li>
        <li><a href="delete_product.jsp">Delete product</a></li>
        <li><a href="view_customers_with_more.jsp">View customers with more than one order</a></li>
        <li><a href="check_stock.jsp">Check for items out of stock</a></li>
        <li><a href="index.html">Back home</a></li>
        <form action="LogoutServlet" method="GET">
            <input type="submit" value="LOGOUT">
        </form>
    </body>
</html>
