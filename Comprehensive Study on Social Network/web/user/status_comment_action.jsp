<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page import="Database.SpellingCorrecto"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="Database.Database"%>
<%
Database db=new Database();
String id=(String)session.getAttribute("log_id"); 
String comment=request.getParameter("comment");
String status_id=request.getParameter("status_id");
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
String wordr=null;
String encoded =null;
String temp="";
 int i=0;
 int bid=0;
String msgp=comment.toLowerCase();
temp=msgp;
String[] arr =msgp.split(" "); 
int flag=1;
String s="";
for(i=0;i<arr.length;i++)
{  
SpellingCorrecto d=new SpellingCorrecto();
s=d.result(arr[i]);
System.out.println(s);
ResultSet ab=db.exquery("select * from tbl_bull_name where bull_name='"+s+"'");
String word="";
while(ab.next())
{
bid=ab.getInt("id");
word=ab.getString("bull_name");
if(s.equals(word))
{
%>
<script>
                 alert("You are used swear word");
</script>
<%
encoded = DatatypeConverter.printBase64Binary(word.getBytes());
temp=temp.replace(arr[i], encoded);
temp=temp;
db.exupdate("insert into tbl_block(user_id,swear_word,swear_word_use,date,status)values('"+id+"','"+bid+"','status_comment','"+today_date+"','0')");       
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
db.exupdate("insert into tbl_block(user_id,swear_word,swear_word_use,date,status)values('"+id+"','"+qid+"','status_comment','"+today_date+"','0')");
}
}
}

db.exupdate("insert into tbl_status_comment(user_id,status_id,comment)values('"+id+"','"+status_id+"','"+temp+"')");
//response.sendRedirect("index.jsp");
%>
<script>
                 //alert("Group Created Successfully");
                 window.location="index.jsp";
</script>  







