<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="Database.Database"%>
<%
String id=(String)session.getAttribute("log_id");   
String status=request.getParameter("status");
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
Database db=new Database();
db.exupdate("insert into tbl_status(user_id,statuss,status_date)values('"+id+"','"+status+"','"+today_date+"')");

%>
<script>
alert("Inserted sucessfully");
window.location="index.jsp";
</script>