package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

public class LoginServlet extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
    {
        forward("register",req,resp);
        
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
    {
        String action = req.getParameter("action");
        if ("register".equals(action))
        {
        String userName = req.getParameter("user_name");
        String userPassword = req.getParameter("password");
        String repeatPassword = req.getParameter("repeat_password");
        String userTrueName = req.getParameter("true_name");
        String userAddress = req.getParameter("address");
        String userSex = req.getParameter("sex");
        String userPhoneNumber = req.getParameter("phone_number");
        String userMail = req.getParameter("mail");
     
        UserVo user = new UserVo();
        user.setUserName(userName);
        user.setUserPassword(userPassword);
        user.setRepeatPassword(repeatPassword);
        user.setUserTrueName(userTrueName);
        user.setUserAddress(userAddress);
        user.setUserSex(userSex);
        user.setUserPhoneNumber(userPhoneNumber);
        user.setUserMail(userMail);
        
        UserDao userDao = new UserDao();
        userDao.insertUser(user);
        
        
       // forward("/userlogin.jsp", req, resp);
        }
    }
    
    public void forward(String page, HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
    {
        String jsp = "/WEB-INF/" + page + ".jsp";
        getServletContext().getRequestDispatcher(jsp).forward(req,resp);
    }
}
 