<%@ page language="java" import="java.util.*"pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 用户输入后台URL时，先判断用户是否已经登录,没登陆就跳转回登录界面-->
<html>
  <head>
	<%
	if(session.getAttribute("admin") == null)
	{
	String apath = request.getContextPath();
	String abasePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+apath+"/";
    out.println("<script language=\"javascript\" type=\"text/javascript\">window.location.href=\""+abasePath+"login.jsp\";</script>");
	}
 %>
  </head>
</html>
