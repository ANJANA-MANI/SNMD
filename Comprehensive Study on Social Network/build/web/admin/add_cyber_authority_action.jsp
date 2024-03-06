<%@page import="Database.encryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
Database db=new Database();
String name=request.getParameter("name");
String email_id=request.getParameter("email_id");
String contact=request.getParameter("contact");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String encrypt=encryption.encrypt(password);
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
window.location="add_cyber_authority.jsp";
</script>  
<%}
else
{

String query="insert into tbl_login(email_id,password,profile,cover,user_type,status)values('"+email_id+"','"+encrypt+"','null','null','cyber','1')";
db.exupdate(query);
int max=1;
String qry1="select max(login_id) from tbl_login";
             ResultSet res1=db.exquery(qry1);
             while(res1.next()){
              max=res1.getInt(1);
              }  
db.exupdate("insert into  tbl_cyber_authority(name,contact,gender,log_id)values('"+name+"','"+contact+"','"+gender+"','"+max+"')");
}
%>
<script>
alert("Registration successfull!!");
window.location="add_cyber_authority.jsp";
</script>

   