<%@ page import="java.util.List" %>
<%@ page import="za.ac.tut.entities.OrderItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Order Summary</title></head>
<body>
    <h2>${message}</h2>

    <table border="1">
        <tr>
            <th>Product</th>
            <th>Unit Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        <%
            List<OrderItem> items = (List<OrderItem>) request.getAttribute("orderItems");
            for (OrderItem item : items) {
        %>
        <tr>
            <td><%= item.getProduct().getName() %></td>
            <td>R<%= item.getProduct().getUnitPrice() %></td>
            <td><%= item.getQuantity() %></td>
            <td>R<%= item.getTotalprice() %></td>
        </tr>
        <% } %>
        <tr>
            <td colspan="3"><strong>Total Order Price</strong></td>
            <td><strong>R<%= request.getAttribute("total") %></strong></td>
        </tr>
    </table>
        <p>
            Click <a href="customer_menu.jsp">here</a> to go back home
        </p>
</body>
</html>
