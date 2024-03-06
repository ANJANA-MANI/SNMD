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
<li class="menu__item"><a href="index.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item"><a href="Find_friends.jsp" class="menu__link"><span class="menu__helper">Find Friends</span></a></li>
<li class="menu__item"><a href="Find_request.jsp" class="menu__link"><span class="menu__helper">Friend Request<%if(h>0){%><h6 style="color: #ff0000">(<%out.println(h);%>)<%}%></h6></span></a></li>
<li class="menu__item"><a href="Message.jsp" class="menu__link"><span class="menu__helper">Message</span></a></li>
<li class="menu__item menu__item--current"><a href="create_group.jsp" class="menu__link"><span class="menu__helper">Create Group</span></a></li>
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


            
            
            <div class="section-title text-center wow fadeInDown">
            <h2 align="center">create new group</h2><br><br>
            <div class="col-md-9 col-sm-12 wow fadeInLeft">
            <div class="media">
            <form name="f1"  method="get" action="create_groupaction.jsp">
            <center>             
            <table cellspacing="3" cellpadding="10" style="border-color: black;height: 200px;width: 500px;background-color: #D1D0CE;border-radius: 5px;margin-left:205px;">
                    <tr><td style="color: #E5E4E2;padding-left: 50px;padding-top: 20px" >Group Name</td><td><input name="gname" type="text" id="gname" style="margin-top: 20px" ></td></tr>
                    <tr><td style="color: #E5E4E2;padding-left: 50px;padding-top: 20px" >Select Members</td>
    
            <%
                      
                      String logid=(String)session.getAttribute("log_id");                      
                      String friendid="",fname="",lname="",ffname="",llname="";
                      String s3="select * from tbl_request where user_id='"+logid+"' and status='3'";
                      ResultSet rs1=db.exquery(s3);
                      while (rs1.next()) {
                             friendid=rs1.getString("friend_id");
                             String sq="select * from tbl_register where log_id='"+friendid+"'";
                             ResultSet rs=db.exquery(sq);
                             while (rs.next()) {
                                   fname=rs.getString("first_name");
                                   lname=rs.getString("last_name");           
            %>    
<tr><td style="visibility: hidden;padding-left: 50px;padding-top: 20px" >Select Members</td>
<td><label><input name="members" type="checkbox" value="<%=fname%>" id="members" />
        <%=fname%>&nbsp;<%=lname%> </label></td></tr>  
 
            <%
                      }}
                      String s11="select * from tbl_request where friend_id='"+logid+"'";
                              ResultSet rs11=db.exquery(s11);
                              while (rs11.next()) {
                                    friendid=rs11.getString("user_id");
                      String s4="select * from tbl_register where log_id='"+friendid+"'";
                              ResultSet rs2=db.exquery(s4);
                              while (rs2.next()) {
                                    ffname=rs2.getString("first_name");
                                    llname=rs2.getString("last_name");                    
             %>
             <tr>  <td style="visibility: hidden;padding-left: 50px;padding-top: 20px" >Select Members</td>           
                 <td>
                     <input name="members" type="checkbox" value="<%=ffname%>" id="members" /><b>&nbsp;<%=ffname%>&nbsp;<%=llname%></b></label></td></tr>
    
             <%
                     }
                     }
             %> 
<tr><td></td><td><input type="submit" value="Create" class="btn btn_s"/></td></tr>    
</table>
</center>
</form> 


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
