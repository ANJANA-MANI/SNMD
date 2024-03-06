<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<style>
#MyButton {
width: 100px;
padding: 20px;
cursor: pointer;
font-weight: bold;
font-size: 150%;
background: #05222A;
color: #fff;
border: 1px solid #3366cc;
border-radius: 10px;
}
#MyButton:hover {
color: #ffffff;
background: #02B875;
border: 1px solid #fff;
}
</style>
<%
String name=request.getParameter("val");
String firstName = name.substring(0, name.indexOf(" "));
String lastName = name.substring(name.indexOf(" "));
lastName=lastName.replaceAll(" ","");
Database db=new  Database();
String log_id=(String)session.getAttribute("log_id");
%>
<table>
<tr><td colspan="4"><span class="blink_me"><h2 style="color:#660000;padding-left:30px">User List</h2></span></td></tr><tr>
<%
//requested
String query2="select * from tbl_request where  user_id='"+log_id+"' and status='2'";
ResultSet a2=db.exquery(query2);
String user_id="";
while(a2.next())
{
user_id=a2.getString("friend_id");
String sql2="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where  r.first_name='"+firstName+"' and r.last_name='"+lastName+"' and r.log_id='"+user_id+"'"; 
ResultSet res2=db.exquery(sql2);
while(res2.next())
{%>
<tr><td><a href="display_profile.jsp?id=<%=res2.getInt("log_id")%>"><img src="../proimage/<%=res2.getString("profile")%>" height="200" width="200"></a>
<mark><b>Name:<%=res2.getString("first_name")+" "+res2.getString("last_name")%></b></mark></td><td><h4 style="margin-top:50px;margin-left:-86px">Gender:<%=res2.getString("gender")%></h4></td>
<td><div  style="margin-left:160px"><a  id="MyButton">Requested</a></div></td>   
 <%}}
String query5="select * from tbl_request where  friend_id='"+log_id+"' and status='2'";
ResultSet a5=db.exquery(query5);
String uuser_id="";
while(a5.next())
{
user_id=a5.getString("user_id");
String sql2="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where  r.first_name='"+firstName+"' and r.last_name='"+lastName+"' and r.log_id='"+user_id+"'"; 
ResultSet res2=db.exquery(sql2);
while(res2.next())
{%>
<tr><td><a href="display_profile.jsp?id=<%=res2.getInt("log_id")%>"><img src="../proimage/<%=res2.getString("profile")%>" height="200" width="200"></a>
<mark><b>Name:<%=res2.getString("first_name")+" "+res2.getString("last_name")%></b></mark></td><td><h4 style="margin-top:50px;margin-left:-86px">Gender:<%=res2.getString("gender")%></h4></td>
<td><div  style="margin-left:160px"><a  id="MyButton">Requested</a></div></td>   
 <%}}
//friend
String query3="select * from tbl_request where friend_id='"+log_id+"' and status='3'";
ResultSet a3=db.exquery(query3);
String user_id3="";
while(a3.next())
{
user_id3=a3.getString("user_id");
String sql2="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where  r.first_name='"+firstName+"' and r.last_name='"+lastName+"' and r.log_id='"+user_id3+"'"; 
ResultSet res2=db.exquery(sql2);
while(res2.next())
{%>
<tr><td><a href="display_profile.jsp?id=<%=res2.getInt("log_id")%>"><img src="../proimage/<%=res2.getString("profile")%>" height="200" width="200"></a>
<mark><b>Name:<%=res2.getString("first_name")+" "+res2.getString("last_name")%></b></mark></td><td><h4 style="margin-top:50px;margin-left:-86px">Gender:<%=res2.getString("gender")%></h4></td>
<td><div  style="margin-left:160px"><a  id="MyButton">Friend</a></div></td>   
 <%}}
String query7="select * from tbl_request where user_id='"+log_id+"' and status='3'";
ResultSet a7=db.exquery(query7);
String user_id7="";
while(a7.next())
{
user_id7=a7.getString("friend_id");
String sql2="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where  r.first_name='"+firstName+"' and r.last_name='"+lastName+"' and r.log_id='"+user_id7+"'"; 
ResultSet res2=db.exquery(sql2);
while(res2.next())
{%>
<tr><td><a href="display_profile.jsp?id=<%=res2.getInt("log_id")%>"><img src="../proimage/<%=res2.getString("profile")%>" height="200" width="200"></a>
<mark><b>Name:<%=res2.getString("first_name")+" "+res2.getString("last_name")%></b></mark></td><td><h4 style="margin-top:50px;margin-left:-86px">Gender:<%=res2.getString("gender")%></h4></td>
<td><div  style="margin-left:160px"><a  id="MyButton">Friend</a></div></td>   
 <%}}
String qry4="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where log_id not in(select friend_id from tbl_request where user_id='"+log_id+"') and log_id not in(select user_id from tbl_request where friend_id='"+log_id+"')and first_name='"+firstName+"' and last_name='"+lastName+"' and log_id!='"+log_id+"'";
ResultSet res4=db.exquery(qry4);
int log_id1=0;
int uid=0;

while(res4.next())
{ 
    
  log_id1=res4.getInt("log_id");


%>
<tr><td><a href="display_profile.jsp?id=<%=res4.getInt("log_id")%>"><img src="../proimage/<%=res4.getString("profile")%>" height="200" width="200"></a>
<mark><b>Name:<%=res4.getString("first_name")+" "+res4.getString("last_name")%></b></mark></td><td><h4 style="margin-top:50px;margin-left:-86px">Gender:<%=res4.getString("gender")%></h4></td>
    <td><div  style="margin-left:160px"><a href="friend_sug_action.jsp?id=<%=res4.getInt("login_id")%>" id="MyButton">Add Friend</a></div></td>
<%
}

%>
<tr></tr></tr></table>
