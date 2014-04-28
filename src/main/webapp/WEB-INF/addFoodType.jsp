<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
    <head>
        <title>添加菜系</title>
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
        <h2 align="center">添加菜系</h2>
        <form action="" method="POST">
            <table align="center" border="1"style="position:absolute;left:230px;top:50px;">              
                <tr>
                    <td align="right">菜系名称：</td>
                    <td align="left"><input type="text" name="food_type_name"/></td>
                </tr>
                <tr>
                    <td align="right">菜系描述：</td>
                    <td align="left"><textarea cols="10" rows="3" name="food_description"></textarea></td>
                </tr>
                <tr>  
                    <td align="center" colspan="2"><input type="submit" name="action" value="添加"/>&nbsp &nbsp <a href="?action=foodTypeList">返回列表</a></td>
                </tr>
            </table>
        </form>
        </div>
       <div style="width:990px;height:100px; background-color:grey;text-transform:uppercase;font-wehtht:bold;position: absolute; left:180px; top:600px; "></div>
    </body>
</html>