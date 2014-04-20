package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
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
        if ("注册".equals(action))
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
            resp.getWriter().println("恭喜你，注册成功！！！");
            resp.getWriter().println("<a href=\"\">返回首页</a>");
        }
        else 
        {
            if("登录".equals(action))
            {
                String loginUserName = req.getParameter("login_user_name");
                String loginPassword = req.getParameter("login_password");
                
                if(loginUserName.equals("admin") && loginPassword.equals("abc"))
                {
                    HttpSession session = req.getSession();
                    session.setAttribute("memberId",0L);
                    forward("loginSuccess ",req,resp);                  
                }
                else
                {
                    forward("loginFailed",req,resp);
                }
            }
        }
    }
    
    public void forward(String page, HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
    {
        String jsp = "/WEB-INF/" + page + ".jsp";
        getServletContext().getRequestDispatcher(jsp).forward(req,resp);
    }
}
 