
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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="../js/validation.js"></script>
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
<li class="menu__item"><a href="home.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="add_bull.jsp" class="menu__link"><span class="menu__helper">Add Bulling</span></a></li>
<li class="menu__item menu__item--current menu__item--current"><a href="add_cyber_authority.jsp" class="menu__link"><span class="menu__helper">Add Cyber Authority</span></a></li>
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
<div class="login-right">	
<div style="margin-left:35%;">
<form action="add_cyber_authority_action.jsp" method="post" onsubmit="return cyber_validation();" name="f1">
<h3 style="margin-right:250px">Add Cyber Authority Details</h3>
<input type="text" name="name" id="id_name" placeholder="Name" required="" style="width:50%"><br>
<input type="text" name="email_id" id="id_email_id" placeholder="Email" required="" style="width:50%">
<input type="text" name="contact" id="contact-form" placeholder="Contact" required="" style="width:50%">
<select name="gender" id="gender" class="gender"><option value="0">Select</option><option>Male</option>
<option>Female</option></select>
<input type="password" name="password"  id="id_password" placeholder="Password" required="" style="width:50%">	
<input type="password" name="confirm_password"  id="id_con_password" placeholder=" Confirm Password" required="" style="width:50%">	
<br>
<input type="submit" value="Submit" style="width:20%;margin-left:20%">   
</form>
</div>
<div style="margin-left:10%;margin-top:5%">
<h3 style="margin-right:200px">Manage Cyber Authority Details</h3>   
<%
Database db=new Database();
String query="select count(*) as c from tbl_cyber_authority";   
int cs=0;
ResultSet res=db.exquery(query);
while(res.next()){
cs=res.getInt("c");
}
if(cs>0)
{     
%>
<div style="margin-left:5%;margin-top:50px"><img src="image/details.jpg" alt="" /></div>   
<div style="margin-left:40%;margin-top:-100px">
<table class="gridtable">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Gender</th>
<th>Update</th>
<th>Delete</th>
</tr>
 <%
String query1="select * from  tbl_cyber_authority  as c inner join tbl_login as l on c.log_id=l.login_id";
ResultSet rs=db.exquery(query1);
while(rs.next()){
%>
<tr style="color:#000000;margin-left: 100px">
   <td> <%=rs.getString("id")%></td>
   <td> <%=rs.getString("name")%></td>
   <td> <%=rs.getString("email_id")%></td>
    <td> <%=rs.getString("contact")%></td>
    <td> <%=rs.getString("gender")%></td>
   <td><a href="update_cyber_authority_details.jsp?id=<%=rs.getString("id")%>">Update</a></td>
   <td><a href="delete_cyber_authority.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
</tr>
<% 
                   }}
                    else
                    {%>
</table></div></div>
<div style="margin-left:500px;margin-top:100px;color: #000000;font-size:20px;">
<marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee>NO DATA AVAILABLE<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee>   
</div><%}%></table></div>
</div>
</div>
        <div>
            
        </div>

               
					
                                         
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
