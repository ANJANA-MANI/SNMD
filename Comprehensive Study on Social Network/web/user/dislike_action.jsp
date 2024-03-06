<%@page import="Database.Database"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%

             Database db=new Database();
        //String topic_id=(String)session.getAttribute("s_id");   
        String topic_id=request.getParameter("sid");
        String id=(String)session.getAttribute("log_id");
        out.println(topic_id);
        //out.println(imguser);
          int c=0;
            String qw="select count(*) as c from tbl_dislike where topic_id='"+topic_id+"'";
            ResultSet res222=db.exquery(qw);
            
           if(res222.next())
            {
               c=res222.getInt("c");
               System.out.println("count"+"...."+c);
               
            }
   if(c>=1)
   {
       out.println("update");
         String up="update tbl_dislike set dislikes= dislikes+1 where topic_id='"+topic_id+"'";
         db.exupdate(up);
         response.sendRedirect("index.jsp"); 
   }
   else
   {
       
 String qry1="insert into  tbl_dislike(topic_id,dislikes)values('"+topic_id+"','1')";
                    db.exupdate(qry1);           
          response.sendRedirect("index.jsp");  
   }
    
                  %> 