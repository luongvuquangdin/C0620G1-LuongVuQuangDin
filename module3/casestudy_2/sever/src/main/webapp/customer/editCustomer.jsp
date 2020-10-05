<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/3/2020
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${message!= null}'>
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/home?action=customer">Back to customer list</a>
</p>
<form action="/customers" method="post">
    <input type="hidden" name="actionCustomer" value="edit">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td><input type="text" name="idCustomer" id="ID" value='<c:out value="${customer.customerId}"/>' readonly>
                </td>
            </tr>
            <tr>
                <td><label for="Name">Name: </label></td>
                <td><input type="text" name="nameCustomer" id="Name" value='<c:out value="${customer.customerName}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="Birthday">Birthday: </label></td>
                <td><input type="text" name="birthdayCustomer" id="Birthday" value='<c:out value="${customer.customerBirthday}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="Gender">Gender: </label></td>
                <td><input type="text" name="genderCustomer" id="Gender" value='<c:out value="${customer.customerGender}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="IdCard">IdCard: </label></td>
                <td><input type="text" name="idCardCustomer" id="IdCard" value='<c:out value="${customer.customerIdCard}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="Phone">Phone: </label></td>
                <td><input type="text" name="phoneCustomer" id="Phone" value='<c:out value="${customer.customerPhone}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="Email">Email: </label></td>
                <td><input type="text" name="emailCustomer" id="Email" value='<c:out value="${customer.customerEmail}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="Address">Address: </label></td>
                <td><input type="text" name="addressCustomer" id="Address" value='<c:out value="${customer.customerAddress}"/>'>
                </td>
            </tr>
            <tr>
                <td><label for="TypeId">TypeId: </label></td>
                <td>
                    <select name="typeIdCustomer" id="TypeId">
                        <c:forEach var="customerType" items="${customerTypeList}">
                            <c:choose>
                                <c:when test="${customerType.getCustomerTypeId().equals(customer.getCustomerTypeId())}">
                                    <option value="<c:out value='${customerType.customerTypeId}'/>" selected><c:out value="${customerType.customerTypeName}"></c:out></option>
                                </c:when>
                                <c:otherwise>
                                    <option value="<c:out value='${customerType.customerTypeId}'/>"><c:out value="${customerType.customerTypeName}"></c:out></option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
