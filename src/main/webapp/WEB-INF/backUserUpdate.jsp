<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.order.UserVo"%>
<% UserVo user = (UserVo)request.getAttribute("user");%>

<html>
    <head>
        <title>会员管理</title>
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
        <h2 align="center">第<%=user.getUserId()%>号会员</h2>
        <form action="" method="POST">
            <table align="center" border="1"style="position:absolute;left:230px;top:50px;">
                <tr><td align="center" colspan="9">修改会员信息<input type="hidden" name="userId" value="<%=user.getUserId()%>"></td></tr>
                <tr>
                    <td>ID</td>
                    <td><%=user.getUserId()%></td>
                </tr>
                <tr>
                    <td>用户名</td>
                    <td><input type="text" name="user_name" value="<%=user.getUserName()%>"/></td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input type="text" name="user_password" value="<%=user.getUserPassword()%>"/></td>
                </tr>
                <tr>
                    <td>确认密码</td>
                    <td><input type="text" name="repeat_password" value="<%=user.getRepeatPassword()%>">></td>
                </tr>
                <tr>
                    <td>真实姓名</td>
                    <td><input type="text" name="user_true_name" value="<%=user.getUserTrueName()%>">></td>
                </tr>
                <tr>
                    <td>住址</td>
                    <td><input type="text" name="user_address" value="<%=user.getUserAddress()%>"/></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="text" name="user_sex" value="<%=user.getUserSex()%>"/></td>
                </tr>
                <tr>
                    <td>联系方式</td>
                    <td><input type="text" name="user_phone_number" value="<%=user.getUserPhoneNumber()%>"/></td>
                </tr>
                <tr>
                    <td>E-mail</td>    
                    <td><input type="text" name="user_mail" value="<%=user.getUserMail()%>"/></td>
                </tr>             
                <tr>  
                    <td align="center" colspan="9"><input type="submit" name="action" value="修改"/></td>
                </tr>
            </table>
        </form>
        </div>
       <div style="width:990px;height:100px; background-color:grey;text-transform:uppercase;font-wehtht:bold;position: absolute; left:180px; top:600px; "></div>
    </body>
</html>