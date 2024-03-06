<%-- 
    Document   : find_friends_sug
    Created on : Aug 25, 2017, 4:52:49 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <% 
	try{      
       
String s[]=null;
String log_id=(String)session.getAttribute("log_id");
Database db=new Database();
ResultSet rs = db.exquery("select DISTINCT  first_name,last_name from  tbl_register WHERE log_id NOT IN (SELECT log_id FROM tbl_register WHERE log_id ='"+log_id+"')");
List li = new ArrayList();
while(rs.next()) 
{ 			    
li.add(rs.getString("first_name")+" "+rs.getString("last_name"));
}  
String[] str = new String[li.size()];			
Iterator it = li.iterator();
int i = 0;
while(it.hasNext())
{
String p = (String)it.next();	
str[i] = p;
i++;
}
//jQuery related start		
String query = (String)request.getParameter("q");
int cnt=1;
for(int j=0;j<str.length;j++)
{
if(str[j].toUpperCase().startsWith(query.toUpperCase()))
{
out.print(str[j]+"\n");

if(cnt>=5)
break;
cnt++;
}
}
} 
catch(Exception e)
{ 
e.printStackTrace(); 
}

 %>