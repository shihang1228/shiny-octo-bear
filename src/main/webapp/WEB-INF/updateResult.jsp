<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>修改会员信息结果</title>
        <meta http-equiv="refresh" content="3;url=?action=memberlist"/>
    </head>
    <body>
        <h2 align="center"><% String message = (String)request.getAttribute("flash_message");
                                out.println(message);
                            %></h2>
        <p align="center">请稍等3秒，如果页面没有跳转，请点击这里：<a href="?action=memberlist">here</a></p>
    </body>
</html>