<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp_2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <% 
  //获取cookie的值
  Cookie[] cc=request.getCookies();
  String pwd=null;
  String name=null;
  if(cc!=null){
   for(int i=0;i<cc.length;i++){
   //判断循环的变量是否为name的key值
   //getname获取key的value值
     if(cc[i].getName().equals("name")){
     //getvalue：取得key的value值
     name=cc[i].getValue();
     } else if(cc[i].getName().equals("pwd")){
     pwd=cc[i].getValue();
     }
   }
  }
  
  out.println("用户名："+name+"密码："+pwd);
  %>
  
  <body>
   
</html>
