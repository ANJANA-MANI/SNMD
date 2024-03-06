<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page import="Database.*,java.text.DateFormat,java.util.Date,java.text.SimpleDateFormat,java.util.Calendar;" %>
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
<script type="text/javascript" src="../js/validation.js"></script>
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
function move() {
  var filename=document.getElementById("file1").value;
 
 if(filename=="")
        {
           alert("Choose your file");  
           document.f1.file.focus();
           return false;
       }else
       {
  var elem = document.getElementById("myBar");   
  var width = 10;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
      document.getElementById("label").innerHTML = width * 1  + '%';
    }
  }
        }}

</script>
</head>

<body>
	<!--header-->
<%
 String id=(String)session.getAttribute("log_id");
 String time=(String)session.getAttribute("logintime");
 session.setAttribute("logintime", time);
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
.button_style
{
width:20%;
background: #05222A;
border: none;
outline: none;
color: #fff;
padding: .4em;
font-size:1em
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
ResultSet s2=db.exquery("select distinct(gname),g_id,log_id,user_id,status from tbl_group where log_id='"+id+"' and status='1'");
String grname="";
while(s2.next())
{
grname=s2.getString("gname");
%>
<li>&#8227; <a href="group_chat.jsp?g_id=<%=s2.getString("g_id")%>" class="a_top_hypers"><%=grname%></a></li>
<%}%>
<%
ResultSet s1=db.exquery("select distinct gname,g_id,user_id,status from tbl_group where user_id='"+id+"' and status='1'");
String group="";
while(s1.next())
{
group=s1.getString("gname");
%>
<li>&#8227; <a href="group_chat.jsp?g_id=<%=s1.getString("g_id")%>" class="a_top_hypers"><%=group%></a></li>
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
<div style="margin-left:30%">
<form action="status_action.jsp">
    <textarea name="status" placeholder="Add Status" required="" spellcheck="true"></textarea><br>
<input type="submit" value="Add Status" class="btn" style="margin-top:20px"/>
</form>
<div style="margin-left:40%;margin-top:-130px">
<h3>Upload Image</h3> 
<form name="f1" action="image_upload_action.jsp" enctype="multipart/form-data" method="post" onsubmit="return upload_Validate(this);">
<h5>Select File:<input  id="file1" name="file" type="file" multiple onchange="startRead();"></h5>
<div style="width:50%;height:30px;border:1px solid black;margin-left:10px;margin-top:5px">
<div id="myBar" style="background-color: #02B875;width:0px;height:30px;"><div id="label">10%</div></div></div>
<input  type="submit"  value="Upload" onclick="move();" class="btn" style="margin-top:10px"/>
</form>
</div></div>
<div class="profile" >
    <div style="margin-left:30%;">
<table>
<tr><td colspan="4"><span class="blink_me"><h2 style="color:#05222A;">Home-Status</h2></span></td></tr><tr>
<%
String querys1="SELECT * FROM tbl_status s inner join tbl_register g ON g.log_id = s.user_id WHERE  s.user_id ='"+id+"'";
ResultSet ab1=db.exquery(querys1);
int status_id1=0;
while(ab1.next())
{
status_id1=ab1.getInt("status_id");
%>
<form action="status_comment_action.jsp">
    <tr><td><mark><b>Name:<%=ab1.getString("first_name")+" "+ab1.getString("last_name")%></b></mark></td></tr>
    <tr><td><h4>Status:<%=ab1.getString("statuss")%></h4></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_status_comment c inner join tbl_register r on c.user_id=r.log_id where c.status_id='"+status_id1+"'");
    while(m.next())
    {%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required="" spellcheck="true"/>
     <input type="hidden" name="status_id" value="<%=status_id1%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%} 
String q="select * from tbl_request where user_id='"+id+"' and status='3'";
ResultSet n1=db.exquery(q);
String u_id="";
while(n1.next())
{
u_id=n1.getString("friend_id");
String querys="SELECT * FROM tbl_status s inner JOIN tbl_request r ON s.user_id = r.user_id OR s.user_id = r.friend_id INNER JOIN tbl_register g ON g.log_id = s.user_id WHERE r.status ='3' AND s.user_id='"+u_id+"' and r.user_id='"+id+"'";
ResultSet ab=db.exquery(querys);
int status_id=0;
while(ab.next())
{
status_id=ab.getInt("status_id");
%>
<form action="status_comment_action.jsp">
    <tr><td><mark><b>Name:<%=ab.getString("first_name")+" "+ab.getString("last_name")%></b></mark></td></tr>
    <tr><td><h4>Status:<%=ab.getString("statuss")%></h4></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_status_comment c inner join tbl_register r on c.user_id=r.log_id where c.status_id='"+status_id+"'");
    while(m.next())
    {
%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required="" spellcheck="true"/>
     <input type="hidden" name="status_id" value="<%=status_id%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%}}
String w="select * from tbl_request where friend_id='"+id+"' and status='3'";
ResultSet ww=db.exquery(w);
String f_id="";
while(ww.next())
{
f_id=ww.getString("user_id");
String querys="SELECT * FROM tbl_status s inner JOIN tbl_request r ON s.user_id = r.user_id OR s.user_id = r.friend_id INNER JOIN tbl_register g ON g.log_id = s.user_id WHERE r.status ='3' AND s.user_id='"+f_id+"' and r.friend_id='"+id+"'";
ResultSet ab=db.exquery(querys);
int status_id=0;
while(ab.next())
{
status_id=ab.getInt("status_id");
%>
<form action="status_comment_action.jsp">
    <tr><td><mark><b>Name:<%=ab.getString("first_name")+" "+ab.getString("last_name")%></b></mark></td></tr>
    <tr><td><h4>Status:<%=ab.getString("statuss")%></h4></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_status_comment c inner join tbl_register r on c.user_id=r.log_id where c.status_id='"+status_id+"'");
    while(m.next())
    {
%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required="" spellcheck="true"/>
     <input type="hidden" name="status_id" value="<%=status_id%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%}}
%>
<tr></tr><tr></tr></table></div></div>
<div class="profile" >
<div style="margin-left:30%">
<table>
<tr><td colspan="4"><span class="blink_me"><h2 style="color:#05222A;">Home-Images</h2></span></td></tr><tr>
<%
String queryp="select * from tbl_photo p  join tbl_register g on g.log_id=p.user_id where  p.user_id ='"+id+"'";
ResultSet abc=db.exquery(queryp);
int p_id=0;
while(abc.next())
{
p_id=abc.getInt("id");
%>
<form action="image_comment_action.jsp">
    <tr><td><mark><b>Name:<%=abc.getString("first_name")+" "+abc.getString("last_name")%></b></mark></td></tr>
    <tr><td><img src="../proimage/<%=abc.getString("image")%>" height="200" width="200"></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_image_comment c inner join tbl_register r on c.user_id=r.log_id where c.image_id='"+p_id+"'");
    while(m.next())
    {%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("image_comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required="" spellcheck="true"/>
     <input type="hidden" name="image_id" value="<%=p_id%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%}
String v="select * from tbl_request where friend_id='"+id+"' and status='3'";
ResultSet vv=db.exquery(v);
String fp_id="";
while(vv.next())
{
fp_id=vv.getString("user_id");
String q2="select * from tbl_photo p inner  join tbl_request r on p.user_id=r.user_id or p.user_id=r.friend_id inner join tbl_register g on g.log_id=p.user_id where r.status='3' and p.user_id ='"+fp_id+"' and r.friend_id='"+id+"'";
ResultSet a2=db.exquery(q2);
int p2=0;
while(a2.next())
{
p2=a2.getInt("id");
%>
<form action="image_comment_action.jsp">
    <tr><td><mark><b>Name:<%=a2.getString("first_name")+" "+a2.getString("last_name")%></b></mark></td></tr>
    <tr><td><img src="../proimage/<%=a2.getString("image")%>" height="200" width="200"></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_image_comment c inner join tbl_register r on c.user_id=r.log_id where c.image_id='"+p2+"'");
    while(m.next())
    {%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("image_comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required=""/>
     <input type="hidden" name="image_id" value="<%=p2%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%}}
String k="select * from tbl_request where user_id='"+id+"' and status='3'";
ResultSet kk=db.exquery(k);
String up_id="";
while(kk.next())
{
up_id=kk.getString("friend_id");
String q2="select * from tbl_photo p inner  join tbl_request r on p.user_id=r.user_id or p.user_id=r.friend_id inner join tbl_register g on g.log_id=p.user_id where r.status='3' and p.user_id ='"+up_id+"' and r.user_id='"+id+"'";
//out.println(q2);
ResultSet a2=db.exquery(q2);
int p3=0;
while(a2.next())
{
p3=a2.getInt("id");
//out.println(p3);
%>
<form action="image_comment_action.jsp">
    <tr><td><mark><b>Name:<%=a2.getString("first_name")+" "+a2.getString("last_name")%></b></mark></td></tr>
    <tr><td><img src="../proimage/<%=a2.getString("image")%>" height="200" width="200"></td></tr>
    <tr><td><h3>comments</h3></td></tr> 
    <%
    ResultSet m=db.exquery("select * from tbl_image_comment c inner join tbl_register r on c.user_id=r.log_id where c.image_id='"+p3+"'");
    while(m.next())
    {%>
    
    <tr><td><h5><%=m.getString("first_name")+" "+m.getString("last_name")%>:<%=m.getString("image_comment")%></h5></td></tr>

    <%}
    %>
    <tr><td><input type="text" name="comment" placeholder="Add comment" required="" spellcheck="true"/>
     <input type="hidden" name="image_id" value="<%=p3%>"/>   
    <input type="submit" value="Add Comment"/></td></tr></form>       
<%}}

%>
<tr></tr></table>
   
</div></div>
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
