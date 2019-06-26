<%--
  Created by IntelliJ IDEA.
  User: tiend
  Date: 6/24/2019
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new Product</title>
</head>
<body>
    <h1 style="text-align: center">Create new product</h1>
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <center>
        <form method="post" enctype="multipart/form-data">
            <fieldset><h2>Input information product</h2>
                <table>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <input type="text" name ="name" value="${requestScope["product"].getName()}">
                        </td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td>
                            <input type="text" name ="price" value="${requestScope["product"].getPrice()}">
                        </td>
                    </tr>
                    <tr>
                        <td>Description: </td>
                        <td>
                            <input type="text" name ="description" value="${requestScope["product"].getDescription()}">
                        </td>
                    </tr>
                    <tr>
                        <td>Company: </td>
                        <td>
                            <input type="text" name ="company" value="${requestScope["product"].getCompany()}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Avatar:
                        </td>
                        <td>
                            <input type="file" name="file"  />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name ="name" value="Add product">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <a href="/products">Back to customer list</a>
    </center>
</body>
</html>
