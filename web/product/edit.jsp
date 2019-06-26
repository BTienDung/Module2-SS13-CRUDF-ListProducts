<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/24/2019
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
    <style>
        #image{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <center>
        <p>
            <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </p>
        <form method="post" enctype="multipart/form-data">
            <fieldset>
                <legend><h2 style="text-align: center">Edit product</h2></legend>
                <table>
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
                        <td>
                            Avatar:
                        </td>
                        <td>
                            <img src="<%request.getServletContext().getRealPath("");%>/image/${product.getAvatar()}" id="image">
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                            <input type="file" name="file" value="Chon tep" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Edit Product"></td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <p>
            <a href="/products">Back to Product list</a>
        </p>
    </center>
</body>
</html>
