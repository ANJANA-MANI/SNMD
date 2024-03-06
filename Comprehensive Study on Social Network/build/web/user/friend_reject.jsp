<%@page import="Database.Database"%>
<%
String user_id=request.getParameter("id");
String friend_id=(String)session.getAttribute("log_id");
Database db=new Database();
db.exupdate("update tbl_request set status='5' where user_id='"+user_id+"' and friend_id='"+friend_id+"'");
%>
<script>
alert("accepted sucessfully");
window.location="index.jsp";
</script>