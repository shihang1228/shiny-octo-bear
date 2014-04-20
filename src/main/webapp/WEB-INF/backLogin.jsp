<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>后台登录</title>
    </head>
    <body leftmargin=180px topmargin =50px   backgroud=red>
        <div style="width:990px;height:600px; background-color:blue;text-transform:uppercase;font-weight:bold;">
        <h1 align="center">网上订餐后台管理</h1>
            <form action="" method="POST">
                <table style="position: absolute; left: 550px; top:300px;">
                    <tr>
                        <td align="right">
                        用户名：
                        </td>
                        <td>
                            <input type="text" name="back_username"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            密码：
                        </td>
                        <td>
                            <input type="password" name="back_password"/>
                        </td>
                    </tr>
                </table>
                <table style="width:120px;position:absolute; left:620px; top:370px;">
                    <tr>
                        <td>
                            <input type="submit" name="action" value="登录"/>
                        </td>
                        <td align="right">
                            <input type="reset" name="action" value="重置"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>