package com.order;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

public class FoodTypeServlet extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException
    {
        forward("addFoodType",req,resp);        
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException
    {
        String action = req.getParameter("action");
        if("添加".equals(action))
        {
            String foodTypeName = req.getParameter("food_type_name");
            String foodDescription = req.getParameter("food_description");
            FoodTypeVo foodType = new FoodTypeVo();
            foodType.setFoodTypeName(foodTypeName);
            foodType.setFoodDescription(foodDescription);
        
            FoodTypeDao foodTypeDao = new FoodTypeDao();
            foodTypeDao.insertFoodType(foodType);
            resp.getWriter().println("恭喜您，添加菜系成功！！！");
        }
    }
    public void forward(String page, HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException
    {
        String jsp = "/WEB-INF/" + page + ".jsp";
        req.getServletContext().getRequestDispatcher(jsp).forward(req,resp);
    }
}