<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%
Database db=new Database();
String bull_name=request.getParameter("bull_name");
String query="select * from tbl_bull_name";
String tb_bull_name="";
ResultSet res=db.exquery(query);
while(res.next())
{
 tb_bull_name=res.getString("bull_name");
}
if(bull_name.equals(tb_bull_name))
{%>
<script>
alert("Already Swear word Available!!");
window.location="add_bull.jsp";
</script>   
<%}
else
{
db.exupdate("insert into tbl_bull_name(bull_name)values('"+bull_name+"')");
%>
<script>
alert("Inserted successfull!!");
window.location="add_bull.jsp";
</script>
<%}%>