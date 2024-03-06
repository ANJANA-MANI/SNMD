<%@page import="Database.encryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>

<%
Database db=new Database();
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
String topic=request.getParameter("topic");

db.exupdate("insert into  tbl_social_topic(Topic,publish_date)values('"+topic+"','"+today_date+"')");

%>
<script>
alert("Published successfully!!");
window.location="social_voting.jsp";
</script>

   