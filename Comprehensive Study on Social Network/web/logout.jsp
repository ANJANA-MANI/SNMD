     
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="java.util.*;" %>
    <%@page import="Database.*,java.text.DateFormat,java.util.Date,java.text.SimpleDateFormat,java.util.Calendar;" %>
 <%@page import="java.sql.ResultSet"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Mental Disorders Detection</title>
        </head>
        <body>
            <%
                Database db=new Database();
                String logintime=(String)session.getAttribute("logintime");
                String logid=(String)session.getAttribute("log_id");
                
                
           
        DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
        Date dateobj = new Date();
        String logoff=df.format(dateobj);
        out.println(logoff);
        Date d1 = null;
	Date d2 = null;
		
			d1 = df.parse(logintime);
			d2 = df.parse(logoff);

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();

		 long  diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
			long diffHours = diff / (60 * 60 * 1000) % 24;
			long diffDays = diff / (24 * 60 * 60 * 1000);

			out.print(diffDays + " days, ");
			out.print(diffHours + " hours, ");
			out.print(diffMinutes + " minutes, ");
			out.print(diffSeconds + " seconds.");

		



      String s1="insert into tbl_timedur(login_id,intime,outtime) values ('"+logid+"','"+logintime+"','"+logoff+"')"; 
      db.exupdate(s1); 
      session.invalidate();
      //response.sendRedirect("index.jsp");
                %>
                 <script> 
                  alert("You are logged in <% out.print(diffDays + " days, ");out.print(diffHours + " hours, ");out.print(diffMinutes + " minutes, ");out.print(diffSeconds + " seconds.");
                  %>");
                  window.location="index.jsp";        
               </script>
                 
        </body>
    </html>


            