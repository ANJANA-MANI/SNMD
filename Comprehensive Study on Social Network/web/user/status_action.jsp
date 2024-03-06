<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
String id=(String)session.getAttribute("log_id");   
String status=request.getParameter("status");
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
Database db=new Database();
session.setAttribute("idd",id);
String query="select * from tbl_register r inner join tbl_login l on r.log_id=l.login_id where r.contact='"+status+"' or l.email_id='"+status+"'";
ResultSet re=db.exquery(query);
String word="",email="";
while(re.next())
{
word=re.getString("contact");
email=re.getString("email_id");
}
if(word.equals(status)||email.equals(status))
{
 %>
<script>
            var response=confirm("Do you want to upload your personal details?");         
             if ( response == true )
            {
                  window.location="status1.jsp?stat=<%=status%>";
            }else
            {
              window.location="index.jsp";
            }
</script>
<%
    
}
else
{
db.exupdate("insert into tbl_status(user_id,statuss,status_date)values('"+id+"','"+status+"','"+today_date+"')");
 %>
<script>
alert("Inserted sucessfully");
window.location="index.jsp";
</script>
<%} %>