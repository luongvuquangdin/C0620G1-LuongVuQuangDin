<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/14/2020
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>danh sach gia vi</title>
</head>
<body>
    <c:forEach var="spice" items="${condiment}">
        <p><c:out value="${spice}"/></p>
    </c:forEach>
</body>
</html>
