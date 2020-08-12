<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp_1.jsp' starting page</title>
    
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
         <div align="center">
   <form action="MyJsp_2.jsp" method="get">
          用户名：<input type="text" name="name"><br>
              密码：<input type="password" name="pwd"><br>
                    备注 ：<input type="text"name="sg"><br>
              性别：<input type="radio"name="sex" value="男" >男
            <input type="radio" name="sex" value="女">女<br>
              爱好：<input type="checkbox" name="nobbit" value="篮球">篮球
            <input type="checkbox" name="nobbit" value="足球">足球 
          <input type="submit"value="注册">
          <input type="reset"value="取消">
          
   </form>
   </div>
  
    </body>
</html>
