<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="net.roseindia.bean.UserBean" %>
<%@ page import="net.roseindia.dao.UserDao"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit User</title>
</head>
<body>
<%--<%
    UserBean user = new UserBean();
%>
<%
    UserDao dao = new UserDao();
%>--%>
<form method="POST" action='UserHandler' name="frmEditUser"><input
        type="hidden" name="action" value="edit" />
 <%--   <%
    String uid = request.getParameter("userId");
    if (!((uid) == null)) {
        int id = Integer.parseInt(uid);
        user = dao.getUserById(id);
%>--%>
    <table>
        <tr>
            <td>User ID</td>
            <td>
                <input style="background-color: #d4d4d4" type="text" name="userId" readonly="readonly" value= ${userBean.id}>
            </td>
        </tr>
        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName" value= ${userBean.fName} /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName" value=${userBean.lName}></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>

</form>
</body>
</html>