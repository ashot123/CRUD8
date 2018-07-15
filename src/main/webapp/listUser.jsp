<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
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

<%
    //UserBean user = new UserBean();
    UserDao dao = new UserDao();
    List<UserBean> userList = dao.getAllUsers();
//Iterator<UserBean> itr = userList.iterator();
%>
<table border="1">
    <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
    </tr>
    <tr>
        <%
            /*while(itr.hasNext())
            {
            System.out.println(user.getId());*/
            for (UserBean user : userList) {
        %>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getfName()%>
        </td>
        <td><%=user.getlName()%>
        </td>
        <td><a
                href="UserHandler?action=editform&userId=<%=user.getId()%>">Update</a></td>
        <td><a
                href="UserHandler?action=delete&userId=<%=user.getId()%>">Delete</a></td>

    </tr>
    <%
        }
//}
    %>
</table>
<p><a href="UserHandler?action=insert">Add User</a></p>
</body>
</html>