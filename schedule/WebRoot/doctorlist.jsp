<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:directive.page import="com.bean.Doctor" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
    <head>
	<base href="<%=basePath%>">
	<title>Doctor List</title>
		<meta charset="gb2312" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

	    <!-- css -->
		 
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="style/normalize.css" />
		<link rel="stylesheet" href="style/styles.min.css" />
        <link href=" ../../img/common/favicon.png" rel="shortcut icon" />
		
		<link href="style/jplist.min.css" rel="stylesheet" type="text/css" />		
		
		<!-- js -->		
        <script src="js/vendor/jquery-1.10.0.min.js"></script>
		<script src="js/vendor/modernizr.min.js"></script>
		
		<script src="js/jplist.min.js"></script>

		
			
			<script>
			$('document').ready(function(){
				$('#demo').jplist({
				
					itemsBox: '.list' 
					,itemPath: '.list-item' 
					,panelPath: '.jplist-panel'
					
					//save plugin state
					,storage: 'localstorage' //'', 'cookies', 'localstorage'			
					,storageName: 'jplist-div-layout'
				});
			});
			</script>
		
    </head>
    <body>
	<%	
		//String keyword = new String(request.getParameter("keyword").getBytes("ISO-8859-1"),"GB2312");
		//String keyword=(String)session.getAttribute("keyword");
		String keyword = "search";
		ArrayList<Doctor> doctors=(ArrayList<Doctor>)session.getAttribute("doctors"); 	
	%>
		<!-- black top bar -->
		 
				
		<!-- header -->
		 
		
		<!-- bread crumbs-->
		<div id="bread-crumbs-box" class="box">
			<div id="bread-crumbs" class="box">
			
				<div class="center">
					<div class="box text-shadow">
						<p>
    <a title="" href="../start-here.html">Home</a> &raquo; DoctorList
						</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- main content -->
		<div id="main-content" class="box">
			<div class="center">
				<div id="page-content" class="box">
				
					<!-- demo -->
					<div id="demo" class="box jplist">
						
						<!-- panel -->
						<div class="jplist-panel box panel-top">						
							
							<!-- reset button -->
							<button 
								type="button" 
								class="jplist-reset-btn"
								data-control-type="reset" 
								data-control-name="reset" 
								data-control-action="reset">
								Reset &nbsp;<i class="fa fa-share"></i>
							</button>
							
							<!-- items per page dropdown -->
							<div 
								class="jplist-drop-down" 
								data-control-type="drop-down" 
								data-control-name="paging" 
								data-control-action="paging">
								
								<ul>
									<li><span data-number="3"> 3 per page </span></li>
									<li><span data-number="5"> 5 per page </span></li>
									<li><span data-number="10" data-default="true"> 10 per page </span></li>
									<li><span data-number="all"> view all </span></li>
								</ul>
							</div>
							
							<!-- sort dropdown -->
							<div 
								class="jplist-drop-down" 
								data-control-type="drop-down" 
								data-control-name="sort" 
								data-control-action="sort"
								data-datetime-format="{month}/{day}/{year}"> <!-- {year}, {month}, {day}, {hour}, {min}, {sec} -->
								
								<ul>
									<li><span data-path="default">Sort by</span></li>
									<li><span data-path=".title" data-order="asc" data-type="text">Title A-Z</span></li>
									<li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
									<li><span data-path=".desc" data-order="asc" data-type="text">Description A-Z</span></li>
									<li><span data-path=".desc" data-order="desc" data-type="text">Description Z-A</span></li>
									<li><span data-path=".like" data-order="asc" data-type="number" data-default="true">Likes asc</span></li>
									<li><span data-path=".like" data-order="desc" data-type="number">Likes desc</span></li>
									<li><span data-path=".date" data-order="asc" data-type="datetime">Date asc</span></li>
									<li><span data-path=".date" data-order="desc" data-type="datetime">Date desc</span></li>
								</ul>
							</div>

							<!-- filter by title -->
							<div class="text-filter-box">
							
								<i class="fa fa-search  jplist-icon"></i>
								
								<!--[if lt IE 10]>
								<div class="jplist-label">Filter by Title:</div>
								<![endif]-->
								
								<input 
									data-path=".title" 
									type="text" 
									value="" 
									placeholder="Filter by Title" 
									data-control-type="textbox" 
									data-control-name="title-filter" 
									data-control-action="filter"
								/>
							</div>
							
							<!-- filter by description -->
							<div class="text-filter-box">
								
								<i class="fa fa-search  jplist-icon"></i>
								
								<!--[if lt IE 10]>
								<div class="jplist-label">Filter by Description:</div>
								<![endif]-->
								
								<input 
									data-path=".desc" 
									type="text" 
									value="" 
									placeholder="Filter by Description" 
									data-control-type="textbox" 
									data-control-name="desc-filter" 
									data-control-action="filter"
								/>	
							</div>
							
							<!-- pagination results -->
							<div 
								class="jplist-label" 
								data-type="Page {current} of {pages}" 
								data-control-type="pagination-info" 
								data-control-name="paging" 
								data-control-action="paging">
							</div>
								
							<!-- pagination -->
							<div 
								class="jplist-pagination" 
								data-control-type="pagination" 
								data-control-name="paging" 
								data-control-action="paging">
							</div>
							
						</div>
						 
						
						<!-- data -->   
						<div class="list box text-shadow">
							
			<%  
				for(Doctor doctor : doctors)
				{
			%>	
					<div class="list-item box">					
										<!-- img -->
										<div class="img left">
											<img src="images/doctor.jpg" alt="" title=""/>
										</div>
										
										<!-- data -->
										<div class="block right">
											<p class="date">01/16/2015</p>
											<p class="title"><%=doctor.getName() %></p>
											<p class="desc"><%=doctor.getService() %>.</p>
											<p class="like"><%=doctor.getTime() %></p>
										</div>
					</div>
			<%  		
				}
			%>		
							<!-- item 6 -->
							<div class="list-item box">					
								<!-- img -->
								<div class="img left">
									<img src="images/doctor.jpg" alt="" title=""/>
								</div>
								
								<!-- data -->
								<div class="block right">
									<p class="date">02/05/2004</p>
									<p class="title">Business</p>
									<p class="desc">A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers. Businesses are predominant in capitalist economies, where most of them are privately owned and administered to earn profit to increase the wealth of their owners. Businesses may also be not-for-profit or state-owned. A business owned by multiple individuals may be referred to as a company, although that term also has a more precise meaning.</p>
									<p class="like">15 Likes</p>
								</div>
							</div>
							
						</div>	
						
						<div class="box jplist-no-results text-shadow align-center">
							<p>No results found</p>
						</div>
						
						<!-- ios button: show/hide panel -->
						<div class="jplist-ios-button">
							<i class="fa fa-sort"></i>
							jPList Actions
						</div>
						
						<!-- panel -->
						<div class="jplist-panel box panel-bottom">
							
							<!-- items per page dropdown -->
							<div 
								class="jplist-drop-down" 
								data-control-type="drop-down" 
								data-control-name="paging" 
								data-control-action="paging"
								data-control-animate-to-top="true">
								
								<ul>
									<li><span data-number="3"> 3 per page </span></li>
									<li><span data-number="5"> 5 per page </span></li>
									<li><span data-number="10" data-default="true"> 10 per page </span></li>
									<li><span data-number="all"> view all </span></li>
								</ul>
							</div>
														
							<!-- sort dropdown -->
							<div 
								class="jplist-drop-down" 
								data-control-type="drop-down" 
								data-control-name="sort" 
								data-control-action="sort"
								data-control-animate-to-top="true"
								data-datetime-format="{month}/{day}/{year}"> <!-- {year}, {month}, {day}, {hour}, {min}, {sec} -->
								
								<ul>
									<li><span data-path="default">Sort by</span></li>
									<li><span data-path=".title" data-order="asc" data-type="text">Title A-Z</span></li>
									<li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
									<li><span data-path=".desc" data-order="asc" data-type="text">Description A-Z</span></li>
									<li><span data-path=".desc" data-order="desc" data-type="text">Description Z-A</span></li>
									<li><span data-path=".like" data-order="asc" data-type="number" data-default="true">Likes asc</span></li>
									<li><span data-path=".like" data-order="desc" data-type="number">Likes desc</span></li>
									<li><span data-path=".date" data-order="asc" data-type="datetime">Date asc</span></li>
									<li><span data-path=".date" data-order="desc" data-type="datetime">Date desc</span></li>
								</ul>
							</div>
							
							<!-- pagination results -->
							<div 
								class="jplist-label" 
								data-type="{start} - {end} of {all}"
								data-control-type="pagination-info" 
								data-control-name="paging" 
								data-control-action="paging">
							</div>
								
							<!-- pagination -->
							<div 
								class="jplist-pagination" 
								data-control-animate-to-top="true"
								data-control-type="pagination" 
								data-control-name="paging" 
								data-control-action="paging">
							</div>
							
						</div>
					</div>
					<!-- end of demo -->
				</div>
			</div>
		</div>	
		
    </body>
</html>