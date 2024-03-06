<%@page import="Database.Database"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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

<style>
.dropbtn {
     font-size: 1.3em;
	font-family: 'Josefin Sans', sans-serif;
	color: #000000;
        font-weight: 900;
	
	display: block;
	padding: 19px 20px;
	
   
    
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #FFFFFF;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    font-size: 1.2em;
    font-family: 'Josefin Sans', sans-serif;
    font-weight: 900;
    color: #02B875;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #000000;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #02b875;}
</style>
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
<li class="menu__item"><a href="add_bull.jsp" class="menu__link"><span class="menu__helper">Add Bulling</span></a></li>
<li class="menu__item"><a href="add_cyber_authority.jsp" class="menu__link"><span class="menu__helper">Add Cyber Authority</span></a></li>
<li class="menu__item menu__item--current"><a href="social_voting.jsp" class="menu__link"><span class="menu__helper">Social Voting</span></a></li>
<li class="menu__item"><a href="dictionary.jsp" class="menu__link"><span class="menu__helper">Add dictionary</span></a></li>
<div class="dropdown">
      <li class="dropbtn" class="menu__item" class="menu__link" class="menu__helper">Users</li>                                                            
            <div class="dropdown-content">
                <a href="block_user_list.jsp">Block User List</a>
                <a href="user_details.jsp">User Details</a>                                                                                                              
            </div>
 </div>
 <div class="dropdown">
      <li class="dropbtn">Logout</li>                                                            
            <div class="dropdown-content">
                <a href="../adminlogout.jsp">Logout</a>                                                                                                              
            </div>
 </div>
								
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
                     <div style="margin-left:35%;">
                         <form action="publish_action.jsp" method="post" name="f1">
                             <h3 style="margin-right:250px">Publish to Social Media</h3><br>
                             <textarea name="topic" id="id_name" placeholder="Topic" required="" style="width:60%; height: 150px"></textarea><br>
                             <input type="submit" value="Publish" style="width:20%;margin-left:20%">
                         </form>
                     </div>
                 </div>
               <div style="margin-left:10%;margin-top:5%"> 
               <div style="margin-left:35%;margin-top:50px"><img src="image/details.jpg" alt="" /></div>
               <div class="profile" >
   <div style="margin-left:20%;">
       <div style="border:solid; width:80%;padding: 100px;">
           <table cellpadding="6" cellspacing="7">
           <tr><td colspan="4"><h2 style="color:#05222A; text-align:center;">Social Voting</h2></td></tr>  
<%
     Database db=new Database();
String qu="SELECT * FROM tbl_social_topic";
ResultSet ab3=db.exquery(qu);
int sid=0;
while(ab3.next())
{
sid=ab3.getInt("s_id");
session.setAttribute("s_id", sid);
%>
<tr><td style="padding: 20px;"><b><mark style="color: blue;">Topic:</mark><%=ab3.getString("topic")%></b></td></tr>
 <%
String que="SELECT * FROM tbl_like where topic_id='"+sid+"'";
ResultSet ab4=db.exquery(que);
int like=0;
while(ab4.next())
{
like=ab4.getInt("likes");
}
%>   
<tr><td style="padding: 20px;"><input type="image" src=".../images/like.png" width="48" height="48"><%=like%></td>
<%
String dis="SELECT * FROM tbl_dislike where topic_id='"+sid+"'";
ResultSet ab5=db.exquery(dis);
int dislike=0;
while(ab5.next())
{
dislike=ab5.getInt("dislikes");
}
%> 
<td><input type="image" src=".../images/dislike.png" width="48" height="48"><%=dislike%></td></tr>

    <tr><td style="padding: 20px;color: blue;"><h3>comments</h3></td></tr>
<%
    ResultSet m1=db.exquery("select * from tbl_social_comment c inner join tbl_register r on c.user_id=r.log_id where c.s_id='"+sid+"'");
    while(m1.next())
    {
%>
    
    <tr><td style="padding: 20px; color:brown;"><h5><%=m1.getString("first_name")+" "+m1.getString("last_name")%>:<%=m1.getString("comment")%></h5></td></tr>

    <%}
    %>
<%}%>
           </table>
       </div> 
   </div>
</div>
               </div>
                    
                
                <div style="clear:both;"></div>
					<!--footer-->
					<!--copy-->
                                        <div class="copy-section" style="margin-top:100%">
						<div class="container">
							<p>&copy; 2018 Home Plat. All rights reserved | </p>
						</div>
					</div>
				
</body>
</html>
