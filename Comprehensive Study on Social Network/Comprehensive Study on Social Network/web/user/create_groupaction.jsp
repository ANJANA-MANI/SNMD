
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Database.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mental Disorders Detection</title>
    </head>
    <body>
        <%
           
            Database db=new Database();   
            int i,j;            
            String m="",uid="";
            String id=(String)session.getAttribute("log_id");  
               //out.println(id);                  
            String gname=request.getParameter("gname");
             //out.println(gname);
            String[] members=request.getParameterValues("members");             
            j=members.length;
            for (i=0;i<j;i++) {  
                 m=members[i];                   
                // out.println(m);
            String u="select log_id from tbl_register where first_name='"+m+"'";
            ResultSet vv=db.exquery(u);
            while(vv.next()){   
                 uid=vv.getString("log_id");
                 //out.println(uid);
           }
          int c=0;
           String query="select count(*) as c from tbl_group where gname='"+gname+"' and log_id='"+uid+"'";
                ResultSet rss=db.exquery(query);
                while(rss.next())
                     {
                      c=rss.getInt("c");
                     }
                if(c==0)
                     {    
            String s="insert into tbl_group(gname,log_id,user_id,status)values('"+gname+"','"+uid+"','"+id+"','0')";
            db.exupdate(s);             
                        
         %>
          <script>
                 alert("Group Created Successfully");
                 window.location="create_group.jsp";
          </script>    
          <%
                     }else{
          %>
          <script>
                 alert("Group name Already Exists");
                 window.location="create_group.jsp";
          </script>  
           <%
                }}
           %>
    </body>
</html>
