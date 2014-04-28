<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<p align="right">欢迎!<%=session.getAttribute("username")%>  登录时间：<%=new Date()%>   <a href="auth/logout">注销 </a></p>