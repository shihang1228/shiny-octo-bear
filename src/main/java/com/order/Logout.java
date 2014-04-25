package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;


public class Logout extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException
    {
        if(req.getRequestURI().endsWith("/logout"))
        {
            logout(req,resp);
            return;
        }
    }
    public void logout(HttpServletRequest req , HttpServletResponse resp) throws IOException, ServletException
    {
        HttpSession session = req.getSession();
        session.removeAttribute("memberId");
        resp.sendRedirect(req.getContextPath()+ "/backlogin");
    }
    
}