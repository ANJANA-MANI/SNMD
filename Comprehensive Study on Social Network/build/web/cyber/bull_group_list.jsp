
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
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
						<h1 style="font-family:Monotype Corsiva;"><a href="">Mental Disorders Detection</a></h1>
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
<li class="menu__item"><a href="home.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="change_password.jsp" class="menu__link"><span class="menu__helper">Change Password</span></a></li>
<li class="menu__item"><a href="bull_user_list.jsp" class="menu__link"><span class="menu__helper">Bulling Word user list</span></a></li>
<li class="menu__item menu__item--current"><a href="bull_group_list.jsp" class="menu__link"><span class="menu__helper">Bulling Word Group list</span></a></li>
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
    <div class="login-right">	
<div style="margin-left:20%;margin-top:5%">
    <h3 style="margin-right:300px">Group Details</h3>
    
   <%
       Database db=new Database();
String q="select count(*) as c from tbl_group_block where status='0'";   
int cs1=0;
ResultSet res1=db.exquery(q);
while(res1.next()){
cs1=res1.getInt("c");
}
if(cs1>0)
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
<th>Group Name</th>
<th>Date</th>
<th>Action</th>
</tr>
 <%
String query2="select * from  tbl_group_block as b inner join tbl_register as r on b.user_id=r.log_id inner join tbl_bull_name n on n.id=b.swear_word inner join tbl_group g on g.g_id=b.gp_id  where b.status='0'";
ResultSet rs1=db.exquery(query2);
while(rs1.next()){
%>
<tr style="color:#000000;margin-left: 100px">
   <td> <%=rs1.getString("id")%></td>
   <td> <%=rs1.getString("first_name")%></td>
   <td> <%=rs1.getString("last_name")%></td>
   <td> <%=rs1.getString("gender")%></td>
   <td> <%=rs1.getString("bull_name")%></td>
   <td> <%=rs1.getString("gname")%></td>
   <td> <%=rs1.getString("date")%></td>
   <td><a href="group_block_action.jsp?id=<%=rs1.getString("id")%>">Block</a></td>
   </tr>
<% 
                   }}
                    else
                    {%>
</table></div></div>
<div style="margin-left:500px;margin-top:100px;color: #000000;font-size:20px;">
<marquee scrsollamount="5" width="40">&lt;&lt;&lt;</marquee>NO DATA AVAILABLE<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee>   
</div><%}%></div>



               
					
                                         
               
					<!--footer-->
					<!--copy-->
                                      
				
<!--                                     <div class="" style="margin-top:100%">
						<div class="container">
							<p>&copy; 2017 Home Plat. All rights reserved | </p>
						</div>
					</div>
				-->
</body>
</html>
