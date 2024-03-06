<%-- 
    Document   : status1
    Created on : 15 Dec, 2018, 12:34:25 PM
    Author     : l
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mental Disorders Detection</title>
    </head>
    <body>
       <%
       Date date = Calendar.getInstance().getTime();
       DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
       String today_date = formatter.format(date);
       Database db=new Database();    
       String s=request.getParameter("stat");
       //out.println(s);
       String id=(String)session.getAttribute("idd");
       //out.println(id);
       db.exupdate("insert into tbl_status(user_id,statuss,status_date)values('"+id+"','"+s+"','"+today_date+"')");
       %>
<script>
alert("Inserted sucessfully");
window.location="index.jsp";
</script>
    </body>
</html>
