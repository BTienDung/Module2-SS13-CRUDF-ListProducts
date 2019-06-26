<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/25/2019
  Time: 8:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
    <style>
        #table{
            border-collapse: collapse;
        }
        #image{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <center>
        <fieldset>
            <legend><h2>Information Product</h2></legend>
            <table border="1" id="table">
                <tr>
                    <td>Id: </td>
                    <td>${requestScope["product"].getId()}</td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>${requestScope["product"].getName()}</td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td>${requestScope["product"].getPrice()}</td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td>${requestScope["product"].getDescription()}</td>
                </tr>
                <tr>
                    <td>Company: </td>
                    <td>${requestScope["product"].getCompany()}</td>
                </tr>
                <tr>
                    <td>Avatar: </td>
                    <td>
                        <img src="<%request.getServletContext().getRealPath("");%>/image/${product.getAvatar()}" id="image">
                    </td>
                </tr>
            </table>
            <h3><a href="/products">Back to list product</a></h3>
        </fieldset>
    </center>
</body>
</html>
