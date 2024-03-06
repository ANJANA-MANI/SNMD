<%@page import="Database.Database"%>
<%@page import="Database.encryption"%>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String id=(String)session.getAttribute("log_id");
String encrypt=encryption.encrypt(pass);
Database db=new Database();
db.exupdate("update tbl_login set password='"+encrypt+"',email_id='"+email+"' where login_id='"+id+"'");
%>
<script>
     alert("Updated sucessfully");
    window.location="home.jsp";
</script>