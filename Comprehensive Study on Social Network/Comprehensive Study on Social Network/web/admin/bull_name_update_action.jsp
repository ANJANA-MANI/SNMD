<%@page import="Database.Database"%>
<%
String bull_name=request.getParameter("bull_name");
String id=request.getParameter("id");
Database db=new  Database();
db.exupdate("update tbl_bull_name set bull_name='"+bull_name+"' where id='"+id+"'");
%>
<script>
alert("Updated successfull!!");
window.location="add_bull.jsp";
</script>