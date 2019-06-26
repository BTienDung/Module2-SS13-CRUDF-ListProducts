<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/25/2019
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
    <center>

        <form method="post">
            <fieldset>
                <legend><h1>Product information</h1></legend>
                <table id="table">
                    <tr>
                        <td>Id: </td>
                        <td><input type="text" name="id" id="id" value="${requestScope["product"].getId()}"></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
                    </tr>
                    <tr>
                        <td>Description: </td>
                        <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
                    </tr>
                    <tr>
                        <td>Company: </td>
                        <td><input type="text" name="company" id="company" value="${requestScope["product"].getCompany()}"></td>
                    </tr>
                    <tr>
                        <td>Avatar: </td>
                        <td>
                            <img src="<%request.getServletContext().getRealPath("");%>/image/${product.getAvatar()}" id="image">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <a href="/products">Back to list product</a>
    </center>
</body>
</html>
