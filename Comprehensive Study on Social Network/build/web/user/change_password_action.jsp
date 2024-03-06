<%@page import="Database.Database"%>
<%@page import="Database.encryption"%>
<%
String Pass=request.getParameter("name");
String id=(String)session.getAttribute("log_id");
String encrypt=encryption.encrypt(Pass);
Database db=new Database();
db.exupdate("update tbl_login set password='"+encrypt+"' where login_id='"+id+"'");
%>
<script>
     alert("Updated sucessfully");
    window.location="Setting.jsp";
</script>