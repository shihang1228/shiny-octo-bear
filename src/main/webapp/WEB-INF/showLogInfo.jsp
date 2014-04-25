<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<p align="right">欢迎!<%=session.getAttribute("username")%>  登录时间：<%=new Date()%>   <a href="?action=logout">注销 </a></p>