<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>注册会员</title>
        <script type="text/javascript">
            function checkLogin()
            {
                var username = document.getElementById("name_id");
                if(username.value == "")
                {
                    alert("用户名不能为空！");
                    username.focus();
                    return false;
                }
                var password = document.getElementById("password_id");
                if(password.value == "")
                {
                    alert("密码不能为空");
                    password.focus();
                    return false;
                }
                return true;
            }
        </script>
        
        
        
    </head>
    <body leftmargin=180px topmargin =50px   backgroud=red>
        <div style="width:990px;height:150px; background-color:blue;text-transform:uppercase;font-weight:bold;">
        <h1 align="center">网上订餐管理系统<h1>
        </div>
        <div style="width:250px;height:450px; background-color:red;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:200px; ">
        <form action="login" method="POST" onsubmit="return checkLogin()">
            <table align="center">
                <h1 align="center">用户登录</h1>
                <tr>
                    <th align="right">用户名：</th>
                    <td><input type="text" name="login_user_name" id="name_id"/></td>
                </tr>
                <tr>
                    <th align="right">密码：</th>
                    <td><input type="password" name="login_password" id="password_id"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="action" value="登录"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                    <input type="submit" name="action" value="注册"/></td>                      
                </tr>
            </table>
        </form>
        </div>
        <div style="width:250px;height:250px; background-color:green;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:400px; ">
            <h1 align="center">本周优惠活动</h1>
        </div>
        <div style="width:720px;height:450px; background-color:yellow;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 450px; top:200px; ">
            <form  action="login" method="POST" align="center">
                <h1>用户注册</h1>
                <table align="center">
                    <tr>
                        <th align="right">用户名：</th>
                        <td><input type="text" name="user_name"/></td>
                    </tr>
                    <tr>
                        <th align="right">密码：</th>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr>
                        <th align="right">密码确认：</th>
                        <td><input type="password" name="repeat_password"/></td>
                    </tr>
                    <tr>
                        <th align="right">真实姓名：</th>
                        <td><input type="text" name="true_name"/></td>
                    </tr>
                    <tr>
                        <th align="right">住址：</th>
                        <td><input type="text" name="address"/></td>
                    </tr>
                    <tr>
                        <th align="right">性别：</th>
                        <td><input type="radio" name="sex" value="male" checked = "checked"/>男
                            <input type="radio" name="sex" value="female"/>女</td>
                    </tr>
                    <tr>
                        <th align="right">联系电话：</th>
                        <td><input type="text" name="phone_number"/></td>
                    </tr>
                    <tr>
                        <th align="right">e-mail：</th>
                        <td><input type="text" name="mail"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="action" value="注册"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <input type="reset" name="action" value="取消"/></td>                      
                    </tr>
                </table>
            </form>
        </div>
         
    </body>
</html>