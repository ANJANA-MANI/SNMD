<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="Database.Multypath"%>
<%@page import="java.net.URL"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%
String urls="http://www.bannedwordlist.com/lists/swearWords.txt";
URL url;
Document doc = Jsoup.connect(urls).get();
Elements ps = doc.select("body");
String file_name="bull_word";
String content=ps.text().replaceAll("\'", "");
String[] arr=(content.replaceAll(" ", ",")).split(",");
Database db=new Database();
db.exupdate("TRUNCATE TABLE tbl_bull_name;");
for(int i=0; i<arr.length;i++)
{
db.exupdate("insert into tbl_bull_name(bull_name)values('"+arr[i]+"')");
}
String query="select * from tbl_bull_name";
ResultSet res=db.exquery(query);
while(res.next())
{
%>
<style>
#box
{
width: 300px;
height: 50px;
border: 2px solid black;    
-moz-box-shadow:3px 3px 5px 6px #ccc;
-webkit-box-shadow:3px 3px 5px 6px #ccc;
box-shadow:3px 3px 5px 6px #ccc;
}
</style>
<%String value=res.getString("bull_name");%>
<div id="box"><h3 style="margin-left:30px"><%=value%></h3></div>
<%}%>

