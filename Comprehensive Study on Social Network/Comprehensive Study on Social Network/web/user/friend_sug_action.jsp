<%@page import="Database.Database"%>
<%
     String id=request.getParameter("id");
     Database db=new Database();
     String log_id=(String)session.getAttribute("log_id");
     db.exupdate("insert into tbl_request(user_id,friend_id,status)values('"+log_id+"','"+id+"','2')");
     response.sendRedirect("Find_friends.jsp");
%>

