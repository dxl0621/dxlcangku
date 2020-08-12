<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test_1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <% String name =request.getParameter("name");
      String pwd =request.getParameter("pwd"); 
      session.setAttribute("name", name);
      boolean panduan=false;
      if(name.equals("dxl")&&pwd.equals("123")){
      panduan=true;
      
      }else if(name.equals("zyt")&&pwd.equals("123")){
      panduan=true;
      
      }else{
      panduan=false;
      
      }
      
      if(panduan==true){
      //全局作用域，作用当前正在运行的项目
        Integer count=(Integer)application.getAttribute("count");
        if(count !=null){
        count=count+1;
        }else{
        count=1;
        }
        //把统计人数计入到作用域中
        application.setAttribute("count", count);
        //登录成功跳转页面
        request.getRequestDispatcher("test_2.jsp").forward(request, response); 
      }else{
         //登录失败重载页面
         response.sendRedirect("index.jsp");
      }
         
      
      %>
      
  </body>
</html>
