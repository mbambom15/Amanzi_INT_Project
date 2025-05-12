<%-- 
    Document   : add_product
    Created on : 01 May 2025, 11:27:06 PM
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
        <h1>Add product details</h1>
        <form action="AddProductServlet" method="POST">
            <table>
                
                <tr>
                    <td>Product name:</td>
                    <td><input type="text" name="name" required=""</td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" required=""</td>
                </tr>
                <tr>
                    <td>Quantity:</td>
                    <td><input type="text" name="qty" required=""</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="ADD"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
