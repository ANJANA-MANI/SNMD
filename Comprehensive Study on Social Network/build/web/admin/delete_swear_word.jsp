<%@page import="Database.Database"%>
<%
String id=request.getParameter("id");
Database db=new Database();
db.exupdate("delete from tbl_bull_name where id='"+id+"'");
%>
<script>
alert("Deleted successfull!!");
window.location="add_bull.jsp";
</script>