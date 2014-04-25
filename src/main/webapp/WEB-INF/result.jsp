<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<html>
    <head>
        <title>修改会员信息结果</title>
        <meta http-equiv="refresh" content="3;url=?action=memberlist"/>
    </head>
    <body>
    
        <h2 align="center"><% String loginSuccess = (String)request.getAttribute("login_success");
                            if(loginSuccess != null)
                            {
                                out.println(loginSuccess);
                            }
                            %>
    
        <h2 align="center"><% String message = (String)request.getAttribute("flash_message");
                            if(message != null)   
                            {
                               out.println(message);
                            }
                            %></h2>
        <h2 align="center">
        <% String deleteMessage = (String) request.getAttribute("delete_message");
           if(deleteMessage!=null)
           {
                out.println(deleteMessage);
           }
        %></h2>
        <p align="center">请稍等3秒，如果页面没有跳转，请点击这里：<a href="?action=memberlist">here</a></p>
    </body>
</html>