
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="Database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.encryption"%>
<%
    
Database db=new Database();
DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
       Date dateobj = new Date();
       String t=df.format(dateobj);
       out.println(t);
 session.setAttribute("logintime", t);
 
String email_id=request.getParameter("Email");
String password=request.getParameter("Password");
String encryptpass=encryption.encrypt(password);
String lid="";
String type="";
String category="";
String status="";
int c=0;
String str="select count(*) as c,login_id,user_type,email_id,status from tbl_login where email_id='"+email_id+"'and password='"+encryptpass+"'"; 
ResultSet res=db.exquery(str);
String user="",pass="";
 while(res.next())
 {
type=res.getString(1);
c=res.getInt("c");
lid=res.getString("login_id");
status=res.getString("status");
type=res.getString("user_type");
email_id=res.getString("email_id");
session.setAttribute("log_id",lid);
session.setAttribute("email_id", email_id);
 }
if(c>0)
{
if(status.equals("1"))
 {
 if(type.equals("admin"))
{
response.sendRedirect("admin/home.jsp");    
} 
else if(type.equals("user")){

 String s;
/*
URL link = new URL("http://freegeoip.net/json/");
BufferedReader in = new BufferedReader(new InputStreamReader(link.openStream()));
String inputLine;
String json = in.readLine();
s = json.replace("[", "").replace("]", "");
s = s.substring(1, s.length() - 1);
String[] split = s.split("[}][,][{]");
for (String string : split) {
//out.println("<br>"+string);
        }
JSONObject jsonObj1 = new JSONObject(json);
String ip=(String)jsonObj1.get("ip");
String country_name=(String)jsonObj1.get("country_name");
String region_name=(String)jsonObj1.get("region_name");
String city=(String)jsonObj1.get("city");
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String date_time=dateFormat.format(date);
db.exupdate("insert into tbl_login_place(country,region,city,date_and_time,log_id)values('"+country_name+"','"+region_name+"','"+city+"','"+date_time+"','"+lid+"')");
String query="select * from tbl_login_place p inner join tbl_register r on p.log_id=r.log_id where r.log_id='"+lid+"'";
System.out.println(query);
String old_country="";
String old_region="";
String old_city="";
String contact="";
String old_time="";
int flag=0;
ResultSet ress=db.exquery(query);
while(ress.next())
{
   old_country=ress.getString("country");
   old_region=ress.getString("region");
   old_city=ress.getString("city");
   contact=ress.getString("contact");
   old_time=ress.getString("date_and_time");
}
System.out.println("hoiiiiiiiiiiiii");

String new_ip=(String)jsonObj1.get("ip");
String message_user_name="9567385775";
String message_password="cyber123";
System.out.println(region_name);
//message m=new message();
//m.login(message_user_name,message_password);
//m.sendSMS("Login Alert \n Country="+country_name+"\n Region="+region_name+"\n City="+city+"\n Login time='"+old_time+"\n Login Ip="+new_ip,contact);
*/
response.sendRedirect("user/index.jsp");
}
else if(type.equals("cyber"))
{
response.sendRedirect("cyber/home.jsp");
}
else
{
%>
<script>
alert("invalid user");
window.location="index.jsp";
</script> 
<%
}
}
else
{
%>
<script>
alert("Blocked User");
window.location="index.jsp";
</script>  
<%
}
}
else
{
%>
<script>
alert("Invalid User");
window.location="index.jsp";
</script>
<%  
}
%>
