<%@page import="Database.Database"%>
<%
Database db=new Database();
String id=request.getParameter("id");
db.exupdate("delete from tbl_cyber_authority where id='"+id+"'");

%>
<script>
alert("Deleted successfull!!");
window.location="add_cyber_authority.jsp";
</script>