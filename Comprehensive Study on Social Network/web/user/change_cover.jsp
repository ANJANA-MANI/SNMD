<%-- 
    Document   : change_cover
    Created on : Sep 17, 2017, 3:39:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript" src="../js/validation.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-top:25px;margin-left:5%"><h2 style="color:#000000;"><b><u>Change Cover Picture</u></b></h2>
<form name="f1" action="change_cover_action.jsp" enctype="multipart/form-data" method="post" onsubmit="return upload_Validate(this);">
<h5 style="margin-bottom:30px;margin-top: 30px">Select File:<input  id="file1" name="file" type="file"></h5>
<div style="width:50%;height:30px;border:1px solid black;margin-left:10px;margin-top:5px">
<div id="myBar" style="background-color: #02B875;width:0px;height:30px;"><div id="label">10%</div></div></div>
<div style="margin-left:70px;margin-top:10px"><input  type="submit" value="Upload" class="btn" onclick="move()"></div>
</form>
</div> 
    </body>
</html>
