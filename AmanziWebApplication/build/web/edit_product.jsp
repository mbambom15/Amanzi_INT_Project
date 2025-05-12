<%-- 
    Document   : edit_products
    Created on : 01 May 2025, 11:53:38 PM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New changes</title>
    </head>
    <body>
        <h1>Enter product ID</h1>
        <form action="StartEditServlet" method="POST">
            <table>
                <tr>
                    <td>Product ID: </td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="param"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
