<%@ page language="java" import="java.util.*"pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- �û������̨URLʱ�����ж��û��Ƿ��Ѿ���¼,û��½����ת�ص�¼����-->
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
