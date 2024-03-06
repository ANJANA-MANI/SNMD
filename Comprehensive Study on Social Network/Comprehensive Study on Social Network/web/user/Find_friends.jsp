

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
<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />
<!--js-->

<!--js-->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,700italic,700,600italic,600,400italic,300italic,300,100italic,100' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--webfonts-->

<link href="jquery/jquery-ui.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<script src="JS/jquery.autocomplete.js"></script>
<script src="JS/ajax.js"></script>
<script>
jQuery(function(){
$("#country").autocomplete("find_friends_sug.jsp");
});

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

<li class="menu__item"><a href="index.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
<li class="menu__item menu__item--current"><a href="Find_friends.jsp" class="menu__link"><span class="menu__helper">Find Friends</span></a></li>
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
#div_top_hypers {
display:inline;  
float: right;
    
}
#ul_top_hypers {
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
<div class="user" style="margin-left:40%;margin-top:30px">
<input type="text" id="country" name="country" placeholder="Search Name Here" onchange="" size="40"/>
<input type="button" value="Search" onclick="ajax_friend_list()"/>
</div>
<div id="display" style="margin-left:30%;margin-top:30px"></div>

     <style>
        .txtbox{
            display: block;
            float: left;
            height: 32px;
            width: 100px;
        }

        .btncls{
            display: block;
            float: left;
            height: 40px;
            margin: -1px -2px -2px;
            width: 41px;
        }
     </style>         
					
                                         
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
