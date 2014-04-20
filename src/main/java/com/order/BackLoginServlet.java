package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

public class BackLoginServlet extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException
    {
        forward("backLogin",req,resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException
    {
        String userName = req.getParameter("back_username");
        String password = req.getParameter("back_password");
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
    }
    public void forward(String page,HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
        String jsp = "/WEB-INF/" + page + ".jsp";
        getServletContext().getRequestDispatcher(jsp).forward(req,resp);
    }
}
