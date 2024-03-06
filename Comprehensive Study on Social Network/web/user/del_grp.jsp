
    <%@page import="Database.Database"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
               String uid="";
               String sid=request.getParameter("id");
               System.out.println("sid "+sid);
               String lid=(String)session.getAttribute("log_id"); 
                
               String qry="delete from tbl_group where user_id='"+lid+"' and gname='"+sid+"'";              
               try{
               int i=db.exupdate(qry);                       
               }
               catch(Exception e){
               System.out.println(e);
               }     
            %>

               <script> 
                   alert("Group deleted sucessfully");
                   window.location="view_group.jsp";
               </script>
        </body>
    </html>
