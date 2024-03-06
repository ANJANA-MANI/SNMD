function bull_extract()
{
        var xmlhttp;
        var url="bull_extract.jsp";
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
function ex_dictionary()
{
        var xmlhttp;
        var url="ex_dictionary.jsp";
        
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
function usage_analysis()
{
    alert("hoii");
        var xmlhttp;
        var url="usage_analysis.jsp";
        
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


