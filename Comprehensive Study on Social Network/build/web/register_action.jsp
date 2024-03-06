<%@page import="Database.encryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String date_of_birth=request.getParameter("date_of_birth");
String gender=request.getParameter("gender");
String email_id=request.getParameter("email_id");
String password=request.getParameter("password");
String contact=request.getParameter("contact");
String encrypt=encryption.encrypt(password);
Database db=new Database();
ResultSet res=db.exquery("select * from tbl_login");
String tbl_email="";
while(res.next())
{
  tbl_email=res.getString("email_id");
}
if(tbl_email.equals(email_id))
{%>
<script>
alert("Username is already available use another username!!");
window.location="Register.jsp";
</script>  
<%}
else
{

String query="insert into tbl_login(email_id,password,profile,cover,user_type,status)values('"+email_id+"','"+encrypt+"','pro.jpg','co.jpg','user','1')";
db.exupdate(query);
int max=1;
String qry1="select max(login_id) from tbl_login";
             ResultSet res1=db.exquery(qry1);
             while(res1.next()){
              max=res1.getInt(1);
              }  
db.exupdate("insert into tbl_register(first_name,last_name,date_of_birth,gender,contact,log_id)values('"+first_name+"','"+last_name+"','"+date_of_birth+"','"+gender+"','"+contact+"','"+max+"')");
}
%>
<script>
alert("Registration successfull!!");
window.location="index.jsp";
</script>