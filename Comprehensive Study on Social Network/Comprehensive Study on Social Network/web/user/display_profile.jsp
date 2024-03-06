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
<link href="../css/my_style.css" rel="stylesheet" type="text/css" media="all" />
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Home Plat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!--js-->


<!--js-->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,700italic,700,600italic,600,400italic,300italic,300,100italic,100' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--webfonts-->

<link href="jquery/jquery-ui.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="JS/ajax.js"></script>
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
<%
 Database db=new Database();
 String ids=(String)session.getAttribute("log_id");
 ResultSet ra=db.exquery("select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where r.log_id='"+ids+"'");
 String user_name="",user_prof="";
 while(ra.next())
 {
    user_name=ra.getString("first_name")+" "+ra.getString("last_name");
    user_prof=ra.getString("profile");
 }
 String id=request.getParameter("id");
 String query="select * from tbl_register where log_id='"+id+"'";
 String name="";
 ResultSet res=db.exquery(query);
 while(res.next())
 {
     name=res.getString("first_name")+" "+res.getString("last_name");
 }
 String query1="select * from tbl_login where login_id='"+id+"'";
 String pro_name="",cov_name="";
 ResultSet re=db.exquery(query1);
 while(re.next())
 {
  pro_name=re.getString("profile");
  cov_name=re.getString("cover");
 }
 ResultSet r=db.exquery("select count( *) as c from tbl_request where friend_id='"+id+"' and status='2'");
 int h=0;
 while(r.next())
 {
 h=r.getInt("c");  
 }


%>   
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
<li class="menu__item menu__item--current"><a href="index.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="Find_friends.jsp" class="menu__link"><span class="menu__helper">Find Friends</span></a></li>
<li class="menu__item"><a href="Find_request.jsp" class="menu__link"><span class="menu__helper">Friend Request<%if(h>0){%><h6 style="color: #ff0000">(<%out.println(h);%>)<%}%></h6></span></a></li>
<li class="menu__item"><a href="Message.jsp" class="menu__link"><span class="menu__helper">Message</span></a></li>
<li class="menu__item"><a href="Setting.jsp" class="menu__link"><span class="menu__helper">Setting</span></a></li>
<li class="menu__item"><a href="../logout.jsp" class="menu__link"><span class="menu__helper">Logout</span></a></li>
								
								</ul>
							</nav>
								<div class="social-icons">
                                         <i class="icon"><img src="../proimage/<%=user_prof%>" style="border-radius:50%; width:30px;height:30px"/></i>
                                         <i class="icon1"><h2 style="color: #0033ff"><%=user_name%></h2></i>
									
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
                <div class="profile">                            
                    <div class="image"><img src="../proimage/<%=cov_name%>" class="img-cover">
            
        </div>
                    <div class="user">
            <div class="avatar">
                  <div class="show-image">
                      <img src="../proimage/<%=pro_name%>" class="img-thumbnail img-profile" width="160px" height="160px">
                      
   <div id="imgdiv"><input type="file" id="my_file" style="display: none;" name="file"/></div>
   <input style="margin-top:150px" class="the-buttons" id="img" type="submit" value="Change Profile Picture" onchange="this.form.submit()" />
                      
                  </div> </div>
                         <h2><%=name%></h2>  
                         <%
    ResultSet a=db.exquery("select * from tbl_request where friend_id='"+id+"' and user_id='"+ids+"'");
    int status=1;
    while(a.next())
    {
       status=a.getInt("status"); 
    }
    if(status==2)
    {%>
    <input type="button" value="Requested" class="btn" style="margin-left:30px"/>     
    <%}
    else if(status==3)
 {
    %>
<input type="button" value="Friend" class="btn" style="margin-left:30px"/>
<%}
    else
    {%>
 <a href="friend_sug_action.jsp?id=<%=id%>"><input type="button" value="Add Friend" class="btn" style="margin-left:30px"/>  </a>     
    <%}
%>
<a href="chat.jsp?friend_id=<%=id%>"><input type="button" value="Message" class="btn" style="margin-left:30px"/></a>
                       
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
