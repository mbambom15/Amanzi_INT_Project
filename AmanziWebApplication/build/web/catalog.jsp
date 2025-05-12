
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Catalog</title>
</head>
<body>
    <h1>Catalog</h1>
    <%
        List<Product> allProducts = (List<Product>) request.getAttribute("allProducts");
    %>
    <form action="PlaceOrderServlet" method="post">
        <table border="1">
            <tr>
                <th>Select</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Available Quantity</th>
                <th>Order Quantity</th>
            </tr>
            <%
                for (Product prod : allProducts) {
                    String p_name = prod.getName();
                    Double price = prod.getUnitPrice();
                    int qty = prod.getStockQuantity();
                    Long id = prod.getId();
            %>
            <tr>
                <td>
                    <input type="checkbox" name="productIds" value="<%= id %>"/>
                    <input type="hidden" name="productName_<%= id %>" value="<%= p_name %>"/>
                    <input type="hidden" name="productPrice_<%= id %>" value="<%= price %>"/>
                </td>
                <td><%= p_name %></td>
                <td>R<%= price %></td>
                <td><%= qty %></td>
                <td><input type="number" name="orderQty_<%= id %>" min="1" max="<%= qty %>" /></td>
            </tr>
            <%
                }
            %>
        </table>
        <br/>
        <input type="submit" value="Place Order"/>
    </form>
</body>
</html>
