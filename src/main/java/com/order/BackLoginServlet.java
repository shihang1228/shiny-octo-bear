package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.ArrayList;

public class BackLoginServlet extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException
    {
        String action = req.getParameter("action");
        if(isNotLogin(req,resp))
        { 
            forward("backLogin",req,resp);
        }
        else if("memberlist".equals(action)) 
        {          
            UserDao userDao = new UserDao();
            ArrayList<UserVo> list = userDao.memberList();
            req.setAttribute("list",list);
            forward("backMember",req,resp);
        }
        else if("show".equals(action))
        {                                   
            Long pid = Long.valueOf(req.getParameter("id"));
            UserDao userDao = new UserDao();
            UserVo user = userDao.getMemberById(pid);
            req.setAttribute("user",user);
            forward("backUserView",req,resp);                                               
        }
        else if("userUpdate".equals(action))
        {
            Long pid = Long.valueOf(req.getParameter("id"));
            UserDao userDao = new UserDao();
            UserVo user = userDao.getMemberById(pid);
            req.setAttribute("user",user);
            forward("backUserUpdate",req,resp);    
        }
                
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException
    {
        String action = req.getParameter("action");
        String pid = req.getParameter("id");
        String userName = req.getParameter("back_username");
        String password = req.getParameter("back_password");
        if("登录".equals(action))
        {
            if(userName.equals("admin") && password.equals("abc"))
            {
                HttpSession session = req.getSession();
                session.setAttribute("memberId",0L);
                forward("backLoginSuccess",req,resp);
            }
            else 
            {
                forward("backLoginFailed",req,resp);
            }
            return;
        }
        
        if("userUpdate".equals(action))
        {
            UserVo user =new UserVo();
            user.setUserId(Long.valueOf(req.getParameter("id")));
            user.setUserName(req.getParameter("user_name"));
            user.setUserPassword(req.getParameter("user_password"));
            user.setRepeatPassword(req.getParameter("repeat_password"));
            user.setUserTrueName(req.getParameter("user_true_name"));
            user.setUserAddress(req.getParameter("user_address"));
            user.setUserSex(req.getParameter("user_sex"));
            user.setUserPhoneNumber(req.getParameter("user_phone_number"));
            user.setUserMail(req.getParameter("user_mail"));
            
            UserDao userDao = new UserDao();
            userDao.userUpdate(user);
        }
        
    }
    public void forward(String page,HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
        String jsp = "/WEB-INF/" + page + ".jsp";
        getServletContext().getRequestDispatcher(jsp).forward(req,resp);
    }
    public boolean isNotLogin(HttpServletRequest req , HttpServletResponse resp)
    {
        HttpSession session = req.getSession();
        Long memberId = (Long)session.getAttribute("memberId");
        return memberId==null;
    }
}
