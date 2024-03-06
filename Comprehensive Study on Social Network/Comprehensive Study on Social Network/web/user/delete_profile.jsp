<%@page import="Database.Database"%>
<%
 String id=(String)session.getAttribute("log_id");
 Database db=new Database();
 db.exupdate("delete from tbl_block where user_id='"+id+"'");
 db.exupdate("delete from tbl_chat where chat_user_login_id='"+id+"' or chat_friend_login_id='"+id+"'");
 db.exupdate("delete from tbl_image_comment where user_id='"+id+"'");
 db.exupdate("delete from tbl_login where login_id='"+id+"'");
 db.exupdate("delete from tbl_photo where user_id='"+id+"'");
 db.exupdate("delete from tbl_register where log_id='"+id+"'");
 db.exupdate("delete from tbl_request where user_id='"+id+"' or friend_id='"+id+"'");
 db.exupdate("delete from tbl_status where user_id='"+id+"'");
 db.exupdate("delete from tbl_status_comment where user_id='"+id+"'");
%>
<script>
alert("Deleted sucessfully");
window.location="../logout.jsp";
</script>
