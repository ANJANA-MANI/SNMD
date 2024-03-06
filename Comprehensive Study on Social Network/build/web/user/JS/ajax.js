function ajax_friend_list()
{
        var xmlhttp;
        var name=document.getElementById('country').value;
        var url="display_name_list.jsp?val="+name;
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("display").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", url, true);
        xmlhttp.send();
}
function change_pro()
{
        var xmlhttp;
        var url="change_pro.jsp";
        
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("output").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", url, true);
        xmlhttp.send();
}
function change_cover()
{
        var xmlhttp;
        var url="change_cover.jsp";
        
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("output1").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", url, true);
        xmlhttp.send();
}
function chat()
{
        var xmlhttp;
        var url="chat.jsp";
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("output").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", url, true);
        xmlhttp.send();
}
function change_pass()
{
        var xmlhttp;
        var url="change_password.jsp";
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("output2").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", url, true);
        xmlhttp.send();
}
