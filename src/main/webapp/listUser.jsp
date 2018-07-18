<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="net.roseindia.bean.UserBean" %>
<%@ page import="net.roseindia.dao.UserDao" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All User</title>
</head>
<body>
<p><b>All Users</b></p>
<%--<jsp:useBean id="userList" class="java.util.ArrayList"  scope="request" />--%>
<%
    //UserBean user = new UserBean();
    //UserDao dao = new UserDao();
    //List<UserBean> userList = dao.getAllUsers();
    List<UserBean> userList = (List<UserBean>) request.getAttribute("users");
//Iterator<UserBean> itr = userList.iterator();
    //List<UserBean> userList2 = (List<UserBean>)userList;
%>
<table border="1">
    <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
    </tr>
    <tr>
        <%
            //List<UserBean> userList2 = (List<UserBean>)userList;
            for (UserBean user : userList) {
        %>
        <td><%=user.getId()%></td>
        <td><%=user.getFirstName()%></td>
        <td><%=user.getLastName()%></td>
        <td><a href="UserHandler?action=editform&userId=<%=user.getId()%>">Update</a></td>
        <td><a href="UserHandler?action=delete&userId=<%=user.getId()%>">Delete</a></td>
    </tr>
    <%
        }
    %>
</table>
<p><a href="UserHandler?action=create">Add User</a></p>
</body>
</html>