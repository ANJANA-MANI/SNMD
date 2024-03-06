
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<%@page import="Database.*" %>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import=" java.awt.image.BufferedImage,java.io.File,java.util.List,javax.imageio.ImageIO;" %>

<%
Database db=new Database();
   
  
  
   File file ;
   String titl=" ";
    String fileName=" " ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
  // ServletContext context = pageContext.getServletContext();
   String filePath = "C:/Users/l/Documents/NetBeansProjects/Comprehensive Study on Social Network/web/proimage/";
   // Verify the content type
   String contentType = request.getContentType(); 
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("C:/Users/l/Documents/NetBeansProjects/Comprehensive Study on Social Network/web/proimage/"));
      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
        
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
//               out.println("Uploaded Filename: " + filePath + 
//               fileName + "<br>");
break;
            }
            if (fi.isFormField()) {
    String name = fi.getFieldName();
    titl = fi.getString();
    //String des = fi.getString();
 out.println(titl);
 // out.println(des);
  
}
         }
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
     
String id=(String)session.getAttribute("log_id");   
String status=request.getParameter("status");

Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);

String query="select * from tbl_bull_name where bull_name='"+titl+"'";
ResultSet re=db.exquery(query);
String word="" ;
while(re.next())
{
word=re.getString("bull_name");
}
if(word.equals(titl))
{%>
    <script>
                 alert("You are used swear word");
    </script>
<%
}
db.exupdate("insert into tbl_photo(user_id,image,description,date_upload)values('"+id+"','"+fileName+"','"+titl+"','"+today_date+"')");

%> 
<script>
alert("Inserted sucessfully");
window.location="index.jsp";
</script>
</body>
</html>
