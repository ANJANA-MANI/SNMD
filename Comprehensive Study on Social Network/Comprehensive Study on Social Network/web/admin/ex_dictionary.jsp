<%-- 
    Document   : ex_dictionary
    Created on : Oct 3, 2017, 10:59:10 AM
    Author     : user
--%>

<%@page import="Database.Multypath"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.Database"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%  
Multypath mp=new Multypath();
String mpath=mp.dict;
//final String fileName ="C:\\Users\\user\\Documents\\NetBeansProjects\\cyber_bulling_detection_based_on_sematic_enhanced_marginalized_denoising_auto_encoder\\src\\java\\Database\\google-10000-english-usa.txt";
Scanner dictionary = new Scanner(new File(mpath));
String line="";
while (dictionary.hasNextLine()) 
{
    line+=dictionary.nextLine()+",";
    
 /*line= dictionary.nextLine();
 line = line.trim();
String lines=line.replaceAll("\\s+", " ").replaceAll("\'", " ");
String[] arr =lines.split(" ");
 Database db=new Database();
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/db_cyberbulling_detection_based_on_semdae","root","");
for(int i=0; i<arr.length;i++)
{
String qry="insert into tbl_dictionary(word)values('nn')";

out.println(arr[i]);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qry);
st.close();
con.close();
}
}*/
}

//out.print(line);
//line=line.replace(line.substring(line.length()-1), "");
String[] array_dict=line.split(",");
Database db=new Database();
System.out.println(array_dict.length);
 ResultSet r=db.exquery("select count(*) as c from tbl_dictionary");
 int h=0;
 while(r.next())
 {
 h=r.getInt("c");  
 }
 if(h>20000)
 {
for(int i=0; i<array_dict.length;i++)
{
String qry="insert into tbl_dictionary(word)values('"+array_dict[i]+"')";
db.exupdate(qry);
}
}
 else
{%>
 <script>
alert("Registration successfull!!");
window.location="home.jsp";
</script>   
<%}
%>
    </body>
</html>
