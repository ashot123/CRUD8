<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--<%@ page import="net.roseindia.bean.UserBean" %>--%>
<%--<%@ page import="net.roseindia.dao.UserDao"%>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Edit User</title>
</head>
<body>
<p><b>All Users</b></p>

<form method="POST" action='UserHandler' name="frmEditUser"><input
        type="hidden" name="action" value="edit"/>

    <table>
        <tr>
            <td>User ID</td>
            <td>
                <input style="background-color: #d4d4d4" type="text" name="userId" readonly="readonly"
                       value= ${userBean.id}>
            </td>
        </tr>
        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName" value= ${userBean.fName}></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName" value=${userBean.lName}></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update"/></td>
        </tr>
    </table>
</form>
<p><a href="UserHandler?action=listUser">View-All-Records</a></p>
</body>
</html>