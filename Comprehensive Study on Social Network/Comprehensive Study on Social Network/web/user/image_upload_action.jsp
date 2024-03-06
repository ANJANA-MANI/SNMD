<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="Database.Multypath"%>
<%@page import="Database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
          
   
           
            String s;
    String path = "", directory = "", ext = "", enFile = "", path1 = "";

    //to get the content type information from JSP Request Header
    String contentType = request.getContentType();
    System.out.println("contenttype : "+contentType);
    //here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
        DataInputStream in = new DataInputStream(request.getInputStream());
        //we are taking the length of Content type data
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        //this loop converting the uploaded file into byte code
        while (totalBytesRead < formDataLength) {
            byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
            totalBytesRead += byteRead;
        }

        String file = new String(dataBytes);
      
        //for saving the file name
        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
     
        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
       //out.println("saveFile"+saveFile);
        int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1, contentType.length());
        int pos;
        //extracting the index of file
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
        //createDirectory();
       // ServletContext sc = this.getServletContext();
        //String pp = sc.getRealPath("/");


        //path = pp + "maps/" + n;
       // ext = ".jpg";

        // creating a new file with the same name and writing the content in new file
Multypath mp=new Multypath();
String mpath=mp.path.concat(saveFile);
System.out.println("mpath"+mpath);
        //path1 = path + ext;
        //System.out.println("path1=" + path1);
        /*FileOutputStream fileOut = new FileOutputStream(path + ext);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();*/
        
        FileOutputStream fileOut = new FileOutputStream(mpath);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();
        
String id=(String)session.getAttribute("log_id");   
String status=request.getParameter("status");
Date date = Calendar.getInstance().getTime();
DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
String today_date = formatter.format(date);
Database db=new Database();
db.exupdate("insert into tbl_photo(user_id,image,date_upload)values('"+id+"','"+saveFile+"','"+today_date+"')");
}
%> 
<script>
alert("Inserted sucessfully");
window.location="index.jsp";
</script>
</body>
</html>
