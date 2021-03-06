<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bogdan
  Date: 04.05.2017
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add product</title>
</head>
<body>
<form:form method="post" action="/product/add" modelAttribute="newProduct">

    <form:label path="productName">Product name</form:label>
    <form:input type="text" path="productName"/><br>

    <form:label path="description">Description</form:label>
    <form:input type="text" path="description"/><br>

    <form:label path="price">Price</form:label>
    <form:input type="text" path="price"/><br>

    <%-- розібратися з foreach--%>

    <form:select path="category.id">
        <c:forEach var="category" items="${categories}">
            <form:option value="${category.id}">${category.categoryName}</form:option>
        </c:forEach>
    </form:select>



    <button type="submit">Add</button>
</form:form>

</body>
</html>
