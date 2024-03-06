
<%@page import="Database.Database"%>
<%@page import="java.sql.ResultSet"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Mental Disorders Detection</title>
<!--css-->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Home Plat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!--js-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--js-->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,700italic,700,600italic,600,400italic,300italic,300,100italic,100' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--webfonts-->
<script src="js/responsiveslides.min.js"></script>
<link href="jquery/jquery-ui.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="jquery/jquery-ui.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
<script type="text/javascript">
jQuery(document).ready(function($) {
$(".scroll").click(function(event){
event.preventDefault();
$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
});
});
</script>
 <script>
$(function () {
$("#slider").responsiveSlides({
auto: true,
speed: 500,
namespace: "callbacks",
pager: true,
});
});
</script>
  <script type="text/javascript">
function DropDown(el) {
this.dd = el;
this.initEvents();
}
DropDown.prototype = {
initEvents : function() {
var obj = this;
obj.dd.on('click', function(event){
$(this).toggleClass('active');
event.stopPropagation();
});	
}
}
$(function() {
var dd = new DropDown( $('#dd') );
$(document).click(function() {
// all dropdowns
$('.wrapper-dropdown-2').removeClass('active');
});
});
</script>
<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
  <link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		});
		});
	</script>
        <script>
$(function() {
var s=18*365;
 $( "#dob" ).datepicker({ dateFormat: 'dd-mm-yy', changeMonth: true,
changeYear: true,maxDate:-s });
$( "#joinig" ).datepicker({ dateFormat: 'dd-mm-yy', changeMonth: true,
changeYear: true,maxDate:0 });
	
  });</script>
</head>

<body>
	<!--header-->
        
	<div class="header" id="home">
			<div class="header-top">
				<div class="container">
					<div class="head-top">
						<div class="indicate">
							<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">General Pvt 66, Dong Da Hanoi, Vietnam.</a>
						</div>
						<div class="deatils">
							<ul>
								
								
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="logo">
						<h1><a href="">Mental Disorders Detection</a></h1>
					</div>
				</div>
			</div>
		<div class="container">
			<div class="header-bottom">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<nav class="menu menu--francisco">
								<ul class="nav navbar-nav menu__list">
<li class="menu__item menu__item--current"><a href="home.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="add_bull.jsp" class="menu__link"><span class="menu__helper">Add Bulling</span></a></li>
<li class="menu__item"><a href="add_cyber_authority.jsp" class="menu__link"><span class="menu__helper">Add Cyber Authority</span></a></li>
<li class="menu__item"><a href="block_user_list.jsp" class="menu__link"><span class="menu__helper">Block User List</span></a></li>
<li class="menu__item"><a href="user_details.jsp" class="menu__link"><span class="menu__helper">User Details</span></a></li>
<li class="menu__item"><a href="dictionary.jsp" class="menu__link"><span class="menu__helper">Add dictionary</span></a></li>
<li class="menu__item"><a href="../adminlogout.jsp" class="menu__link"><span class="menu__helper">Logout</span></a></li>
								
								</ul>
							</nav>
								<div class="social-icons">
									<a href="#"><i class="icon"></i></a>
									<a href="#"><i class="icon1"></i></a>
									<a href="#"><i class="icon2"></i></a>
									<a href="#"><i class="icon3"></i></a>
								</div>
							<div class="clearfix"></div>
						</div><!-- /.navbar-collapse -->
							<!-- /.container-fluid -->
					</div>
				</nav>

			</div>	
		</div>
	</div>
	<!--header-->
	<!--banner-->
		
	<!--banner-->
	
		<!--footer-->
   <div class="login-right">	
<div style="margin-left:20%;margin-top:5%">
    <style>
        table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:15px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 10px;
	border-style: solid;
	border-color: #666666;
	background-color: #02B875;
}
table.gridtable td {
	border-width: 1px;
	padding: 10px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
    </style>
<h3 style="margin-right:300px">User Details</h3>   
<%
Database db=new Database();
String query="select count(*) as c from tbl_block where status='1'";   
int cs=0;
ResultSet res=db.exquery(query);
while(res.next()){
cs=res.getInt("c");
}
if(cs>0)
{     
%>
<div style="margin-left:10%;margin-top:40px">
<table class="gridtable">
<tr>
<th>Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Gender</th>
<th>Swear Word</th>
<th>Swear word use in</th>
<th>Date</th>
<th>Action</th>
</tr>
 <%
String query1="select * from  tbl_block as b inner join tbl_register as r on b.user_id=r.log_id inner join tbl_bull_name n on n.id=b.swear_word where b.status='1'";
ResultSet rs=db.exquery(query1);
while(rs.next()){
%>
<tr style="color:#000000;margin-left: 100px">
   <td> <%=rs.getString("id")%></td>
   <td> <%=rs.getString("first_name")%></td>
   <td> <%=rs.getString("last_name")%></td>
   <td> <%=rs.getString("gender")%></td>
   <td> <%=rs.getString("bull_name")%></td>
   <td> <%=rs.getString("swear_word_use")%></td>
   <td> <%=rs.getString("date")%></td>
   <td><a href="block_permanant_action.jsp?id=<%=rs.getString("id")%>">Block Permanently</a></td>
   </tr>
<% 
                   }}
                    else
                    {%>
</table></div></div>
<div style="margin-left:500px;margin-top:100px;color: #000000;font-size:20px;">
<marquee scrsollamount="5" width="40">&lt;&lt;&lt;</marquee>NO DATA AVAILABLE<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee>   
</div><%}%></table></div>
               
					
                                         
                <div style="clear:both;"></div>
					<!--footer-->
					<!--copy-->
                                        <div class="copy-section" style="margin-top:100%">
						<div class="container">
							<p>&copy; 2017 Home Plat. All rights reserved | </p>
						</div>
					</div>
				
</body>
</html>
