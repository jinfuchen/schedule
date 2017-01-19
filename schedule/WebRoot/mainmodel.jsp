<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>divmodel</title>
<link rel="stylesheet" href="style/model.css" />
<script src="js/jquery.min.js"></script>
<!--需放在第一个-->
<script src="js/exporting.js"></script>
<script src="js/highcharts.js"></script>
<!--main.pie.js引用上面的js文件，需要放在最下面，自定义来画饼图-->
<script src="js/main.pie.js"></script>
<script src="js/main.line.js"></script>
<script src="js/main.area.js"></script>
<script src="js/main.bar.js"></script>
</head>
<body>
<div id="container">
  <div id="header">
    <h1>Header</h1>
  </div>
  <div id="content">
    <div class="raw_fluid">
      <div id="pie" class="column1"> </div>
      <div id="line" class="column2"> </div>
    </div>
	<div class="raw_fluid">
      <div id="area" class="column1"> </div>
      <div id="bar" class="column2"> </div>
    </div>
  </div>
  <div id="footer">
    <p>Make by <a href="#">Jinfu Chen</a></p>
  </div>
</div>
</body>
</html>
