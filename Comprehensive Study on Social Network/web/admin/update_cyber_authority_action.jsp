<%@page import="Database.encryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email_id=request.getParameter("email_id");
String contact=request.getParameter("contact");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String decpass=encryption.encrypt(password);
Database db=new Database();
ResultSet res=db.exquery("select * from tbl_cyber_authority where id='"+id+"'");
String log_id="";
while(res.next())
{
log_id=res.getString("log_id");
}
db.exupdate("update tbl_login set email_id='"+email_id+"',password='"+decpass+"' where login_id='"+log_id+"'");
db.exupdate("update tbl_cyber_authority set name='"+name+"',contact='"+contact+"',gender='"+gender+"' where id='"+id+"'");
%>
<script>
alert("Updated successfull!!");
window.location="add_cyber_authority.jsp";
</script>