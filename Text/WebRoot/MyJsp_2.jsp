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
  
  <body>
    <%String name=request.getParameter("name"); 
      String pwd=request.getParameter("pwd");
       session.setAttribute("name", name);
       Integer count=(Integer)application.getAttribute("count");
        if(count !=null){
        count=count+1;
        }else{
        count=1;
        }
        //把统计人数计入到作用域中
        application.setAttribute("count", count);
        //登录成功跳转页面
        request.getRequestDispatcher("Myjsp_3.jsp").forward(request, response); %>
  </body>
</html>
