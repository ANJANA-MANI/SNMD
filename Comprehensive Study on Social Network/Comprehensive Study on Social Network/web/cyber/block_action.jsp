<%@page import="Database.Database"%>
<%
String id=request.getParameter("id");
Database db=new Database();
db.exupdate("update tbl_block set status='1' where id='"+id+"'");
%>
<script>
alert("Blocked successfull!!");
window.location="home.jsp";
</script>