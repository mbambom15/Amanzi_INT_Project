<%-- 
    Document   : delete
    Created on : 02 May 2025, 12:46:09 AM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <h1>Enter the product ID to delete.</h1>
        <form action="DeleteServlet" method="POST">
            <table>
                <tr>
                    <td>Product ID:</td>
                    <td><input type="text" name="id" required=""</td>
                </tr>
                <tr>
                    <td><input type="submit" value="DELETE"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
