<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/25/2019
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <style>
        #image{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <center>
        <form method="post">
            <fieldset>
                <legend><h2>Product information</h2></legend>
                <table>
                    <tr>
                        <td>Id: </td>
                        <td>
                            ${requestScope["product"].getId()}
                        </td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td>
                            ${requestScope["product"].getName()}
                        </td>
                    </tr>

                    <tr>
                        <td>Price: </td>
                        <td>
                            ${requestScope["product"].getPrice()}
                        </td>
                    </tr>
                    <tr>
                        <td>Description: </td>
                        <td>
                            ${requestScope["product"].getDescription()}
                        </td>
                    </tr>
                    <tr>
                        <td>Company: </td>
                        <td>
                            ${requestScope["product"].getCompany()}
                        </td>
                    </tr>
                    <tr>
                        <td>Avatar: </td>
                        <td>
                            <img src="<%request.getServletContext().getRealPath("");%>/image/${product.getAvatar()}" id="image">
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Delete product"> </td>
                    </tr>
                </table>
            </fieldset>
            <p>
                <a href="/products">Back to product list</a>
            </p>
        </form>
    </center>
</body>
</html>
