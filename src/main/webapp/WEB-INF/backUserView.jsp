<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ page import="com.order.UserVo"%>
<% UserVo user = (UserVo)request.getAttribute("user");%>

<html>
    <head>
        <title>会员管理</title>
    </head>
    <body leftmargin=180px topmargin =50px   backgroud=red>
        <div style="width:990px;height:150px; background-color:blue;text-transform:uppercase;font-weight:bold;"></div>
        <div style="width:990px;height:50px; background-color:green;text-transform:uppercase;font-weight:bold;position: absolute; left: 180px; top:150px;">
            <p align="right">您好  系统管理员  时间：2012年5月5日 12:56:41</p>
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
        <h2 align="center">第<%=user.getUserId()%>号会员</h2>
            <table align="center" border="1"style="position:absolute;left:58px;top:50px;">
                <tr><td align="center" colspan="9">会员管理</td></tr>
                <tr>
                    <td>ID</td>
                    <td>用户名</td>
                    <td>密码</td>
                    <td>确认密码</td>
                    <td>真实姓名</td>
                    <td>住址</td>
                    <td>性别</td>
                    <td>联系方式</td>
                    <td>E-mail</td>                    
                </tr>              
                <tr>
                    <td><%=user.getUserId()%></td>
                    <td><%=user.getUserName()%></td>
                    <td><%=user.getUserPassword()%></td>
                    <td><%=user.getRepeatPassword()%></td>
                    <td><%=user.getUserTrueName()%></td>
                    <td><%=user.getUserAddress()%></td>
                    <td><%=user.getUserSex()%></td>
                    <td><%=user.getUserPhoneNumber()%></td>
                    <td><%=user.getUserMail()%></td>                   
                </tr>
                <tr>
                <td align="center" colspan="9"><a href="?action=memberlist">返回</a></td>
                </tr>
            </table>
        </div>
       <div style="width:990px;height:100px; background-color:grey;text-transform:uppercase;font-wehtht:bold;position: absolute; left:180px; top:600px; "></div>
    </body>
</html>