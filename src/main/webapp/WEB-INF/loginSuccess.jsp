<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.order.UserVo" %>
<%UserVo user = (UserVo)request.getAttribute("user");%>

<html>
    <head>
        <title>注册会员</title>
    </head>
    <body leftmargin=180px topmargin =50px   backgroud=red>
        <div style="width:990px;height:150px; background-color:blue;text-transform:uppercase;font-weight:bold;"></div>
        <div style="width:990px;height:50px; background-color:green;text-transform:uppercase;font-weight:bold;position: absolute; left: 180px; top:150px;">
            <table border="2" style="position: absolute; left: 180px; top:10px;">
                <tr>
                    <td><a href="">首页</td>
                    <td><a href="">我的订单</td>
                    <td><a href="">我的订餐车</td>
                    <td><a href="">我的订单</td>
                    <td><a href="">留言板</td>
                    <td><a href="">进入后台</td>
                    <td>营业时间：早9:00——晚21:00</td>
                </tr>
            </table>
        </div>
        <div style="width:250px;height:450px; background-color:red;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:200px; ">
            Welcome,&nbsp;&nbsp;<%= user.getUserName() %>
        </div>
        <div style="width:250px;height:450px; background-color:green;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:400px; ">
            <div style="width:250px;height:40px;background-color:pink;text-transform:uppercase;font-wehtht:bold;position:absolute;left:0px;top:0px;">
                <p>菜品分类</p><br/>
                <table align="center" border="1" style="position: absolute; left:80px; top: 55px;" >
                    <tr><td><a href="">凉拌类</a></td></tr>
                    <tr><td><a href="">烧烤类</a><br/></td></tr>
                    <tr><td><a href="">四川火锅类</a><br/></td></tr>
                    <tr><td><a href="">主食类</a><br/></td></tr>
                    <tr><td><a href="">麻辣类</a><br/></td></tr>
                </table>
            </div>
        </div>
        <div style="width:250px;height:250px; background-color:blue;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 180px; top:600px; ">
            <div style="width:250px;height:40px;background-color:pink;text-transform:uppercase;font-wehtht:bold;position:absolute;left:0px;top:0px;">
                <p>菜品查询</p><br/>
                 <form action="login" method="POST">
                    <label>名称：<input type="text" name="username"/></label><br/>
                    <label>种类：<input type="text" name="password"/></label><br/>
                    <center>
                        <input type="submit" value="查询" name="action"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="submit" value="重置" name="action"/>
                    </center>
                </form>
            </div>   
        </div>
        <div style="width:720px;height:650px; background-color:yellow;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 450px; top:200px; ">
            <div style="width:720px;height:50px; background-color:pink;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 0px; top:0px; ">
                <table align="center" style="width:700px;height:20px;position: absolute; left: 0px; top:10px;">
                    <tr>
                        <td>菜品展示</td> 
                        <td align="right"><a href="">更多</a></td>
                    </tr>
            </div>
            
            <table cellpadding="20" cellspacing="5" border="2" style="width:680px;height:200px;position: absolute; left: 10px; top:60px;">
                <tr>
                    <td>鱼香肉丝</td><td>家常豆腐</td><td>清炒白菜</td><td>宫保鸡丁</td>
                </tr>
            </table>
            <table style="width:680px;height:30px;position: absolute; left: 10px; top:262px;">
                <tr>
                    <td align="center">鱼香肉丝</td><td align="center">家常豆腐</td><td align="center">清炒小白菜</td><td align="center">宫保鸡丁</td>
                </tr>
            </table>
            
            <div style="width:720px;height:50px; background-color:purple;text-transform:uppercase;font-wehtht:bold;position: absolute; left: 0px; top:300px; ">
                <table align="center" style="width:700px;height:20px;position: absolute; left: 0px; top:10px;">
                    <tr>
                        <td>主食</td> 
                        <td align="right"><a href="">更多</a></td>
                    </tr>
                </table>
            </div> 
            
            <table cellpadding="20" cellspacing="5" border="2" style="width:680px;height:200px;position: absolute; left: 10px; top:360px;">
                <tr>
                    <td>大米</td><td>饺子</td><td>莜面</td><td>揪片</td>
                </tr>
            </table>
            <table style="width:680px;height:30px;position: absolute; left: 10px; top:562px;">
                 <tr>
                    <td align="center">大米</td><td align="center">饺子</td><td align="center">莜面</td><td align="center">揪片</td>
                </tr>
            </table>
        </div>
        <div style="width:990px;height:100px; background-color:grey;text-transform:uppercase;font-wehtht:bold;position: absolute; left:-270px; top:620px; "></div>
    </body>
</html>