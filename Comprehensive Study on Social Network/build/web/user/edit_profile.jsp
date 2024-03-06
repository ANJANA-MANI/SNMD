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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="JS/ajax.js"></script>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>  
        <script>
$(document).ready(function(){
    $("#img").click(function(){
        $("#my_file").click();
       var fname=document.getElementById("my_file").value;     
      
    });
});
</script>
<script>   
</script>
</head>

<body>
	<!--header-->
<%
 String id=(String)session.getAttribute("log_id");
 String query="select * from tbl_register where log_id='"+id+"'";
 String name="";
 Database db=new Database();
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
 ResultSet r=db.exquery("select count(*) as c from tbl_request where friend_id='"+id+"' and status='2'");
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
<li class="menu__item menu__item--current"><a href="index.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="Find_friends.jsp" class="menu__link"><span class="menu__helper">Find Friends</span></a></li>
<li class="menu__item"><a href="Find_request.jsp" class="menu__link"><span class="menu__helper">Friend Request<%if(h>0){%><h6 style="color: #ff0000">(<%out.println(h);%>)<%}%></h6></span></a></li>
<li class="menu__item"><a href="Message.jsp" class="menu__link"><span class="menu__helper">Message</span></a></li>
<li class="menu__item"><a href="create_group.jsp" class="menu__link"><span class="menu__helper">Create Group</span></a></li>
<li class="menu__item"><a href="view_group.jsp" class="menu__link"><span class="menu__helper">View Group</span></a></li>
<li class="menu__item"><a href="Setting.jsp" class="menu__link"><span class="menu__helper">Setting</span></a></li>
<li class="menu__item"><a href="../logout.jsp" class="menu__link"><span class="menu__helper">Logout</span></a></li>
								
								</ul>
							</nav>
								<div class="social-icons">
             <i class="icon"><img src="../proimage/<%=pro_name%>" style="border-radius:50%; width:30px;height:30px"/></i>
                                         <i class="icon1"><h2 style="color: #0033ff"><%=name%></h2></i>
                                         
									
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
#div_top_hypers 
{
display:inline;  
float: right;
}
#ul_top_hypers 
{
display: inline;
font-size: large;
}
</style>
<div class="profile">        
    <div id="div_top_hypers" style="margin-right:10px;">
    <h4>Chat List</h4><br>
    <ul id="ul_top_hypers">
<%
ResultSet d=db.exquery("select * from tbl_request as r inner join tbl_register as g on r.friend_id=g.log_id where r.user_id='"+id+"' and r.status='3'");
String friend_name="";
while(d.next())
{
friend_name=d.getString("first_name")+" "+d.getString("last_name");
%>
<li>&#8227; <a href="chat.jsp?friend_id=<%=d.getString("friend_id")%>" class="a_top_hypers"><%=friend_name%></a></li>
<%}%>
<%
ResultSet s=db.exquery("select * from tbl_request as r inner join tbl_register as g on r.user_id=g.log_id where r.friend_id='"+id+"' and r.status='3'");
String friend="";
while(s.next())
{
friend=s.getString("first_name")+" "+s.getString("last_name");
%>
<li>&#8227; <a href="chat.jsp?friend_id=<%=s.getString("user_id")%>" class="a_top_hypers"><%=friend%></a></li>
<%}%>
<%
ResultSet s2=db.exquery("select distinct(gname),group_id,log_id,user_id,status from tbl_group where log_id='"+id+"' and status='1'");
String grname="";
while(s2.next())
{
grname=s2.getString("gname");
%>
<li>&#8227; <a href="group_chat.jsp?g_id=<%=s2.getString("group_id")%>" class="a_top_hypers"><%=grname%></a></li>
<%}%>
<%
ResultSet s1=db.exquery("select distinct gname,group_id,user_id,status from tbl_group where user_id='"+id+"' and status='1'");
String group="";
while(s1.next())
{
group=s1.getString("gname");
%>
<li>&#8227; <a href="group_chat.jsp?g_id=<%=s1.getString("group_id")%>" class="a_top_hypers"><%=group%></a></li>
<%}%>
</ul>

</div>

                    <div class="image"><img src="../proimage/<%=cov_name%>" class="img-cover">
            
        </div>
                    <div class="user">
            <div class="avatar">
                  <div class="show-image">
                      <img src="../proimage/<%=pro_name%>" class="img-thumbnail img-profile" width="160px" height="160px">
          
                  </div> </div>
                         <h2><%=name%></h2>  
                </div>
<a href="about_user.jsp" class="btn" style="margin-left:10px">About</a>
<a href="user_friend_list.jsp" class="btn" style="margin-left:10px">Friends List</a>
<a href="user_upload_photo.jsp" class="btn" style="margin-left:10px">Photos</a>
<a href="edit_profile.jsp" class="btn" style="margin-left:10px">Edit Profile</a>
</div>

<div style="margin-left:20%" class="profile"><form action="status_action.jsp">
        <textarea name="status" placeholder="Add Status" required=""></textarea><br>
        <input type="submit" value="Add Status" class="btn" style="margin-top:10px"/>
    </form>
<div style="margin-left:30%;margin-top:-95px">
<h4>Upload Image</h4> 
<form name="f1" action="image_upload_action.jsp" enctype="multipart/form-data" method="post" onsubmit="return upload_Validate(this);">
    <input type="text" name="description" id="description" placeholder="Description" required=""/><br>
    <h5>Select File:<input  id="file1" name="file" type="file" multiple onchange="startRead();"></h5>
<div style="width:50%;height:30px;border:1px solid black;margin-left:10px;margin-top:5px">
<div id="myBar" style="background-color: #02B875;width:0px;height:30px;"><div id="label">10%</div></div></div>
<input  type="submit"  value="Upload" onclick="move();" class="btn" style="margin-top:10px"/>
</form>
</div></div>                  
   <%
String querys="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where r.log_id='"+id+"'";
 String fname="",lname="",email="",contact="";
 ResultSet ress=db.exquery(querys);
 while(ress.next())
 {
     fname=ress.getString("first_name");
     lname=ress.getString("last_name");
     email=ress.getString("email_id");
     contact=ress.getString("contact");
 }
%>
<div style="margin-left:30%;margin-top:5%">
<h4 style="margin-left:30px">User Details</h4>
<div class="modal-body real-spa" style="margin-right:20%">
<div class="login-grids">
<div class="login">
<div class="reg-right">
<form action="edit_profile_action.jsp" method="post" name="f1">
<input type="text" name="first_name" id="id_first_name" value="<%=fname%>">
<input type="text" name="last_name" id="id_last_name" value="<%=lname%>">
<input type="text" name="email_id" id="id_email_id" value="<%=email%>">
<input type="text" name="contact" id="id_email_id"  value="<%=contact%>">
<input type="submit" value="Edit Profile" >
</form>
</div>	
</div>
</div>
</div>
                      
               
                            <div id="output_user"></div>             
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
