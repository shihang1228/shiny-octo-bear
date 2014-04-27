<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList,com.order.FoodTypeVo"%>
<% ArrayList<FoodTypeVo> foodList = (ArrayList<FoodTypeVo>)(request.getAttribute("foodList"));%>
<html>
    <head>
        <title>菜系管理</title>
    </head>
    <body leftmargin=180px topmargin =50px   backgroud=red>
        <div style="width:990px;height:150px; background-color:blue;text-transform:uppercase;font-weight:bold;"></div>
        <div style="width:990px;height:50px; background-color:green;text-transform:uppercase;font-weight:bold;position: absolute; left: 180px; top:150px;">
            <%@ include file="showLogInfo.jsp"%>
        </div>
        <div style="width:250px;height:400px; background-color:red;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:200px; ">
            <table align="center" style="position:absolute; left:80px;top:30px;">
                <tr><td><a href="">系统属性</a></td></tr>
                <tr><td><a href="">基本操作</a></td></tr>
                <tr><td><a href="">会员管理</a></td></tr>
                <tr><td><a href="">菜品类别管理</a></td></tr>
                <tr><td><a href="">菜品管理</a></td></tr>
                <tr><td><a href="">订单管理</a></td></tr>
                <tr><td><a href="">留言管理</a></td></tr>
                <tr><td><a href="">公告管理</a></td></tr>
                <tr><td><a href="">安全退出系统</a></td></tr>
            </table>
        </div>
        <div style="width:720px;height:400px; background-color:yellow;position: absolute; left: 450px; top:200px; ">
            <table border="1"style="position:absolute;left:5px;top:50px;">
                <tr><td align="center" colspan="5">菜系管理</td></tr>
                <tr align="center">
                    <td>菜系ID号</td>
                    <td>菜系名称</td>
                    <td>菜系描述</td>
                    <td align="center" colspan="2">操作</td>
                </tr>
                <%for(int i = 0; i < foodList.size();i++)
                {
                    FoodTypeVo foodType = foodList.get(i);%>
                    <tr>
                    <td><%=foodType.getFoodId()%></td>
                    <td><%=foodType.getFoodTypeName()%></td>
                    <td><%=foodType.getFoodDescription()%></td>
                    <td><a href="">修改</a></td>
                    <td><a href="">删除</a></td>
                    </tr>
                <%}%>
                
            </table>
        </div>
       <div style="width:990px;height:100px; background-color:grey;text-transform:uppercase;font-wehtht:bold;position: absolute; left:180px; top:600px; "></div>
    </body>
</html>