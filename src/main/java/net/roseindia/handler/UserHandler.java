package net.roseindia.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.roseindia.dao.UserDao;
import net.roseindia.bean.UserBean;

public class UserHandler extends HttpServlet {
    private static String INSERT = "/user.jsp";
    private static String EDIT = "/edit.jsp";
    private static String USER_RECORD = "/listUser.jsp";
    private UserDao dao;

    public UserHandler() {
        super();
        dao = new UserDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String redirect = "";
        String uId = request.getParameter("userid");
        String action = request.getParameter("action");
        if (!((uId) == null) && action.equalsIgnoreCase("insert")) {
            int id = Integer.parseInt(uId);
            UserBean user = new UserBean();
            //user.setId(id);
            user.setfName(request.getParameter("firstName"));
            user.setlName(request.getParameter("lastName"));
            dao.addUser(user);
            redirect = USER_RECORD;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Record Added Successfully");
        } else if (action.equalsIgnoreCase("delete")) {
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            dao.removeUser(uid);
            redirect = USER_RECORD;
            request.setAttribute("users", dao.getAllUsers());
            System.out.println("Record Deleted Successfully");
        } else if (action.equalsIgnoreCase("editform")) {

            String userId = request.getParameter("userId");
            UserBean user = new UserBean();
            //user.setId(id);
            int id = Integer.parseInt(userId);
            UserBean userBean = dao.getUserById(id);

            user.setId(id);
            user.setfName(userBean.getfName());
            user.setlName(userBean.getfName());
            request.setAttribute("userBean", userBean);            //user.getfName(); // setfName(request.getParameter("firstName"));
            //user.getlName(); //setlName(request.getParameter("lastName"));
            redirect = EDIT;
        } else if (action.equalsIgnoreCase("edit")) {
            String userId = request.getParameter("userId");
            int uid = Integer.parseInt(userId);
            UserBean user = new UserBean();
            user.setId(uid);
            user.setfName(request.getParameter("firstName"));
            user.setlName(request.getParameter("lastName"));
            dao.editUser(user);
            request.setAttribute("user", user);
            redirect = USER_RECORD;
            System.out.println("Record updated Successfully");
        } else if (action.equalsIgnoreCase("listUser")) {
            redirect = USER_RECORD;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            redirect = INSERT;
        }

        RequestDispatcher rd = request.getRequestDispatcher(redirect);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}