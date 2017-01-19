<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<HTML>
	<HEAD>
		<base href="<%=basePath%>">
		<%@ include file="authority.jsp" %>
		<TITLE>backDoctor</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META http-equiv=Pragma content=no-cache>
		<META http-equiv=Cache-Control content=no-cache>
		<META http-equiv=Expires content=-1000>
		<LINK href="style/admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<!--FRAMESET定义一个框架集，cols和rows定义框架集中列和行的数目和尺寸   -->
	<FRAMESET border=0 frameSpacing=0 rows="60, *" frameborder=no>
		<!--FRAME定义一个框架,在框架集中的一个，name指明名字，在之后的target属性如果用framename则在相应的框架中打开   -->
		<FRAME name=header src="header.jsp" frameBorder=0 noResize scrolling=no>
		<FRAMESET cols="170, *">
			<FRAME name=left src="doctorLeft.html" frameBorder=0 noResize>
			<FRAME name=main src="doctorissue.jsp" frameBorder=0 noResize scrolling=yes>
		</FRAMESET>
	</FRAMESET>
	<noframes>
	</noframes>
</HTML>