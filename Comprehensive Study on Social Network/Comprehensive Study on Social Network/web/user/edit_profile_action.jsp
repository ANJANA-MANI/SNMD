<%@page import="Database.Database"%>
<%
 Database db=new Database();
 String id=(String)session.getAttribute("log_id");
 String first_name=request.getParameter("first_name");
 String last_name=request.getParameter("last_name");
 String email_id=request.getParameter("email_id");
 String contact=request.getParameter("contact");
 db.exupdate("update  tbl_login set email_id='"+email_id+"' where login_id='"+id+"'");
 db.exupdate("update tbl_register set first_name='"+first_name+"',last_name='"+last_name+"',contact='"+contact+"' where log_id='"+id+"'");
 %> 
<script>
alert("Updated successfull!!");
window.location="index.jsp";
</script>