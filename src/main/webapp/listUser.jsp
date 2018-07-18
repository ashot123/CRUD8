<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="users" type="java.util.List<net.roseindia.bean.UserBean>" scope="request"/>

<html>
<head>
    <title>All User</title>
</head>
<body>
<p><b>All Users</b></p>

<table border="1">
    <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th align="center">Update User</th>
        <th align="center">Remove User</th>
    </tr>
    <c:forEach var="currentList" items="${users}">
        <tr>
            <td>${currentList.id}</td>
            <td>${currentList.firstName}</td>
            <td>${currentList.lastName}</td>
            <td align="center"><a href="UserHandler?action=editform&userId=${currentList.id}">Update</a></td>
            <td align="center"><a href="UserHandler?action=delete&userId=${currentList.id}">Delete</a></td>
        </tr>
    </c:forEach>

</table>
<p><a href="UserHandler?action=create">Add User</a></p>
</body>
</html>