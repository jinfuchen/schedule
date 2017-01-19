<%@ page language="java" import="java.util.*" pageEncoding="Gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>schedule Login</title>
    <script language="javascript">
   function check(frm)
   {
    var var1=frm.username.value;
    var var2=frm.password.value;
    
    if(var1.length<1){   
       window.alert("id不能为空");
       return false;
        }
    if(var2.length<1){
	   window.alert("密码不能为空");
	  return false;
	  }
   return true;
   } 	
</script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="style/body.css" type=text/css rel=stylesheet>
	<LINK href="style/newhead.css" type=text/css rel=stylesheet>
</head>
  
  <BODY bgColor=#eef8e0 leftMargin=0 topMargin=0 MARGINWIDTH="0" MARGINHEIGHT="0">
<FORM action="login" method="post" name="form">
 <TABLE cellSpacing=0 cellPadding=0 width=1004 border=0>
  <TBODY>
  <TR>
    <TD colSpan=6><IMG height=92 alt="" src="images/login/crm_1.gif" width=345></TD>
    <TD colSpan=4><IMG height=92 alt="" src="images/login/crm_2.gif" width=452></TD>
    <TD><IMG height=92 alt="" src="images/login/crm_3.gif" width=207></TD>
  </TR>
  <TR>
    <TD colSpan=6><IMG height=98 alt="" src="images/login/crm_4.gif" width=345></TD>
    <TD colSpan=4><IMG height=98 alt="" src="images/login/crm_5.gif" width=452></TD>
    <TD><IMG height=98 alt="" src="images/login/crm_6.gif" width=207></TD></TR>
  <TR>
    <TD rowSpan=5><IMG height=370 alt="" src="images/login/crm_7.gif" width=59></TD>
    <TD colSpan=5><IMG height=80 alt="" src="images/login/crm_8.gif"  width=286></TD>
    <TD colSpan=4><IMG height=80 alt="" src="images/login/crm_9.gif"  width=452></TD>
    <TD><IMG height=80 alt="" src="images/login/crm_10.gif" width=207></TD>
  </TR>
  <TR>
    <TD><IMG height=110 alt="" src="images/login/crm_11.gif" width=127></TD>
    <TD background=images/login/crm_12.gif colSpan=6>
      <TABLE id=table1 cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE id=table2 cellSpacing=1 cellPadding=0 width="100%" border=0>
            <TBODY>
              <TR>
                <TD align="center" width=81><FONT color=#ffffff>username：</FONT></TD>
                <TD><INPUT class=regtxt title="please input your name" maxLength=16 size=16 
                  value="" name="username" id="username"></TD>
              </TR>
              <TR>
                <TD align="center" width=81><FONT color=#ffffff>password：</FONT></TD>
                <TD><INPUT class=regtxt title="please input password" type=password maxLength=16 
                  size=16 value="" name="password" id="password"></TD>
              </TR>
              </TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD colSpan=2 rowSpan=2><IMG height=158 alt="" src="images/login/crm_13.gif" width=295></TD>
    <TD rowSpan=2><IMG height=158 alt="" src="images/login/crm_14.gif" width=207></TD>
  </TR>
  <TR>
    <TD rowSpan=3><IMG height=180 alt="" src="images/login/crm_15.gif" width=127></TD>
    <TD rowSpan=3><IMG height=180 alt="" src="images/login/crm_16.gif" width=24></TD>
    <TD><INPUT title="Login System" type=image height=48 alt="" width=86 src="images/login/crm_17.gif" name=image onClick= "return check(this.form)"></TD>
    <TD><IMG height=48 alt="" src="images/login/crm_18.gif" width=21></TD>
	<!--下面的TD中如果链接A输入到下一行（回车），那么在网页中显示会有空白的间隙-->
    <TD colSpan=2><A href="register.jsp"><IMG title="Register" height=48 alt="" src="images/login/register2.gif" width=84 border=0></A></TD>
    <TD><IMG height=48 alt="" src="images/login/crm_20.gif" width=101></TD></TR>
  <TR>
    <TD colSpan=5 rowSpan=2><IMG height=132 alt="" src="images/login/crm_21.gif" width=292></TD>
    <TD rowSpan=2><IMG height=132 alt="" src="images/login/crm_22.gif" width=170></TD>
    <TD colSpan=2><IMG height=75 alt="" src="images/login/crm_23.gif"  width=332></TD>
  </TR>
  <TR>
    <TD colSpan=2><IMG height=57 alt="" src="images/login/crm_24.gif" width=332></TD>
  </TR>
  <TR>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=59></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=127></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=24></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=86></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=21></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=28></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=56></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=101></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=170></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=125></TD>
    <TD><IMG height=1 alt="" src="images/login/spacer.gif" width=207></TD>
    </TR></TBODY></TABLE></FORM></BODY>
</html>
