<%-- 
    Document   : chat_display
    Created on : Sep 14, 2017, 10:58:50 AM
    Author     : user
--%>

<%@page import="Database.SpellingCorrecto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
String g_id=(String)session.getAttribute("g_id");
String u_id=(String)session.getAttribute("chat_user_id");
String ids=(String)session.getAttribute("log_id");
String message=request.getParameter("message");
Database db=new Database();
String wordr=null;
String encoded =null;
String temp="";
 int i=0;
 int bid=0;
if(message!=null)
{
String msgp=message.toLowerCase();
temp=msgp;
String[] arr =msgp.split(" "); 
int flag=1;
String s="";
for(i=0;i<arr.length;i++)
{  
SpellingCorrecto d=new SpellingCorrecto();
s=d.result(arr[i]);
System.out.println("nbmvnbmnvmb"+s);
ResultSet ab=db.exquery("select * from tbl_bull_name where bull_name='"+s+"'");
String word="";
while(ab.next())
{
bid=ab.getInt("id");
word=ab.getString("bull_name");
if(s.equals(word))
{%>
<script>
                 alert("You are used swear word");
</script>
<%
encoded = DatatypeConverter.printBase64Binary(word.getBytes());
temp=temp.replace(arr[i], encoded);
temp=temp;
db.exupdate("insert into tbl_block(user_id,swear_word,swear_word_use,date,status)values('"+ids+"','"+bid+"','Group chat','"+today_date+"','0')");
db.exupdate("insert into tbl_group_block(user_id,gp_id,swear_word,date,status)values('"+ids+"','"+g_id+"','"+bid+"','"+today_date+"','0')");
}
}
}
String query="select * from tbl_bull_name";
ResultSet re=db.exquery(query);
String qword="",qid="";
while(re.next())
{
qword=re.getString("bull_name");
qid=re.getString("id");
for(i=0;i<arr.length;i++)
{
if(qword.equals(arr[i]))
{
encoded = DatatypeConverter.printBase64Binary(qword.getBytes());
temp=temp.replace(arr[i], encoded);
temp=temp;
db.exupdate("insert into tbl_block(user_id,swear_word,swear_word_use,date,status)values('"+ids+"','"+qid+"','Group chat','"+today_date+"','0')");
}
}
}

db.exupdate("insert into tbl_group_chat(chat_message,chat_date,chat_user_id,gp_id)values('"+temp+"','"+today_date+"','"+ids+"','"+g_id+"')");
}
String query="select * from tbl_group_chat c inner join tbl_register r on c.chat_user_id=r.log_id where c.gp_id='"+g_id+"' or c.gp_id='"+g_id+"' and c.chat_user_id='"+u_id+"'";
ResultSet re=db.exquery(query);
while(re.next())
{
out.print( "<div class='chat'></div><div><span class='name'>"+re.getString("first_name")+" "+re.getString("last_name")+":</span>");
out.print( " "+re.getString("chat_message")+"  <span  class='time'>"+re.getString("chat_date")+"</span></div>");
}
%>
    </body>
</html>
