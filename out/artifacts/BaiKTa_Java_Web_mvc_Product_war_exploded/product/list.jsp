<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/24/2019
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
    <style>
        .table{
            border-collapse: collapse;
            margin: 10px;
            text-align: center;
        }
        #image{
            width: 100px;
            height: 100px;
        }

    </style>
    <script src="JS/Javascrip.js"></script>
</head>
<body>
    <center>
        <fieldset>
            <legend><h1 style="color: red">List Products</h1></legend>
            <table border="1px" class="table" style="background-color: aqua">
                <tr>
                    <td>
                        <a href="/products?action=create">Create new product</a>
                    </td>
                </tr>
            </table>

            <form method="post" id="form" action="/products?action=find">
                <table>
                    <tr>
                        <td>
                            <strong>Input name: </strong>
                        </td>
                        <td><input type="text" name="btn-search"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Search">
                        </td>
                    </tr>
                </table>



            </form>
            <table border="1px" class="table">
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Company</th>
                    <th>Avatar</th>
                    <th>Edit</th>
                    <th>Delete</th>

                </tr>
                <c:forEach items='${requestScope["products"]}' var="product">
                    <tr>
                        <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                        <td>${product.getPrice()}</td>
                        <td>${product.getDescription()}</td>
                        <td>${product.getCompany()}</td>
                        <td>
                            <img src="<%request.getServletContext().getRealPath("");%>/image/${product.getAvatar()}" id="image">
                        </td>
                        <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
                        <td><a href="/products?action=delete&id=${product.getId()}" onclick="show()">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
    </center>
</body>
</html>
