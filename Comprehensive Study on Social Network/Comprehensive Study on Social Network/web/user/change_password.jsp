<%-- 
    Document   : change_password
    Created on : Sep 19, 2017, 4:00:22 PM
    Author     : user
--%>

<%@page import="Database.encryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
<%
   String id=(String)session.getAttribute("log_id");
   Database db=new Database();
   String query="select * from tbl_login where login_id='"+id+"'";
   String pass="";
   ResultSet res=db.exquery(query);
   while(res.next())
   {
     pass=res.getString("password");
   }
   String dec_pass=encryption.decrypt(pass);
   
%>
       <div style="margin-top:25px;margin-left:5%"><h2 style="color:#000000;"><b><u>Change Profile Password</u></b></h2>
<div class="login-right">
<form name="f1" action="change_password_action.jsp" method="post">
<input type="text" name="name" value="<%=dec_pass%>" style="width:50%"><br>
<input type="submit" value="Update Password" style="width:20%;margin-left:20%">  
</form>
</div> </div>
    </body>
</html>
