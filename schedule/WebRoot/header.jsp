<%@ page language="java" import="java.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="style/admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" background="images/backmanage/header_bg.jpg" border=0>
			<TR height=56>
				<TD width=260>
					<IMG height=56 src="images/backmanage/header_left.jpg" width=260>
				</TD>
				<TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px" align="center">
					current user : <%=request.getSession().getAttribute("admin") %> &nbsp;&nbsp;
					<A style="COLOR: #fff" href="#" target=main>Welcome Health System</A> &nbsp;&nbsp;
					<A style="COLOR: #fff"
						onclick="if (confirm('Are You Sure？')) return true; else return false;"
						href="#" target=_top>Exit System</A>
				</TD>
				<TD align=right width=268>
					<IMG height=56 src="images/backmanage/header_right.jpg" width=268>
				</TD>
			</TR>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TR bgColor=#1c5db6 height=4>
				<TD></TD>
			</TR>
		</TABLE>
	</BODY>
</HTML>
