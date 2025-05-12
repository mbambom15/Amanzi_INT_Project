<%-- 
    Document   : end_edit
    Created on : 02 May 2025, 12:02:03 AM
    Author     : nhlak
--%>

<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page Cont...</title>
    </head>
    <body>
        <h1>Enter new details</h1>
        <%
            Long id = (Long)request.getAttribute("id");
            Product product =(Product)request.getAttribute("product");
            String name = product.getName();
            Double price = product.getUnitPrice();
            Integer qty = product.getStockQuantity();
        %>
        <form action="EndEditServlet" method="POST">
            <table>
                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="id" value="<%=id%>" readonly=""</td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="name" value="<%=name%>" readonly=""</td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" value="<%=price%>" </td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="qty" value="<%=qty%>" </td>
                </tr>
                <tr>
                    <td><input type="submit" value="EDIT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
