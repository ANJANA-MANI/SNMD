<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
String id=request.getParameter("id");
Database db=new Database();
String user_id="";
ResultSet res=db.exquery("select * from tbl_group_block where id='"+id+"'");
while(res.next())    
{
  user_id=res.getString("user_id");
}
db.exupdate("update tbl_login set status='2' where login_id='"+user_id+"'");
db.exupdate("delete from tbl_group_block where user_id='"+user_id+"'");
db.exupdate("delete from tbl_chat where chat_user_login_id='"+user_id+"'");
db.exupdate("delete from tbl_chat where chat_friend_login_id='"+user_id+"'");
db.exupdate("delete from tbl_group where user_id='"+user_id+"'");
db.exupdate("delete from tbl_group where log_id='"+user_id+"'");
db.exupdate("delete from tbl_group_chat where chat_user_id='"+user_id+"'");
db.exupdate("delete from tbl_image_comment where user_id='"+user_id+"'");
db.exupdate("delete from tbl_login_place where log_id='"+user_id+"'");
db.exupdate("delete from tbl_photo where user_id='"+user_id+"'");
db.exupdate("delete from tbl_register where log_id='"+user_id+"'");
db.exupdate("delete from tbl_request where user_id='"+user_id+"'");
db.exupdate("delete from tbl_request where friend_id='"+user_id+"'");
db.exupdate("delete from tbl_status where user_id='"+user_id+"'");
db.exupdate("delete from tbl_status_comment where user_id='"+user_id+"'");
%>
<script>
alert("updated successfully");
window.location="block_user_list.jsp";
</script> 