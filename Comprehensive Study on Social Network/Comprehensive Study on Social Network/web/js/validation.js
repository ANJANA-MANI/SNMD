function validation()
{
var fnames=document.getElementById("id_first_name").value;
if(fnames==" " || !isNaN(fnames))
{
alert("Please Provide a valid First name");
document.f1.first_name.focus();
return false;
}
var lnames=document.getElementById("id_last_name").value;
if(lnames==" " || !isNaN(lnames))
{
alert("Please Provide a valid Last name");
document.f1.last_name.focus();
return false;
}
var gender=document.getElementById("gender").value;
if(gender=="0")
{
alert("Please Choose your gender");
document.f1.gender.focus();
return false;
}
var mail=document.getElementById("id_email_id").value;
atpos=mail.indexOf("@");
dotpos=mail.indexOf(".");
if((atpos<1)||(dotpos-atpos<2)){
alert("Please Provide your Valid Email");
document.f1.email_id.focus();
return false;
}
var contact=document.getElementById("contact").value;
if((isNaN(contact)) || contact.length!=10)
{
alert("Please Provide valid Phone Number");
document.f1.contact.focus();
return false;
} 
var pswd=document.getElementById("id_password").value;
if(pswd=="")
{
alert("Please Enter your Password");
document.f1.password.focus();
return false;
}
else
{
if(pswd.length<6 || pswd.length>12)
{
alert("Please provide a Password with greater than 6 and lesser than 12 characters");
document.f1.password.focus();
return false;
}
}
var cpswd=document.getElementById("id_con_password").value;
if(cpswd=="")
{
alert("Please Enter your Confirm Password");
document.f1.confirm_password.focus();
return false;
}
else
{
if(pswd!=cpswd)
{
alert("Password dose not matching")
document.f1.confirm_password.focus();
return false;
}
}
return true;

}
function cyber_validation()
{
var cfname=document.getElementById("id_name").value;
if(cfname=="" || !isNaN(cfname))
{
alert("Please Provide a valid name");
document.f1.name.focus();
return false;
}
var mail=document.getElementById("id_email_id").value;
atpos=mail.indexOf("@");
dotpos=mail.indexOf(".");
if((atpos<1)||(dotpos-atpos<2)){
alert("Please Provide your Valid Email");
document.f1.email_id.focus();
return false;
}
var phone_number=document.getElementById("contact-form").value;
if((isNaN(phone_number)) || phone_number.length!=10)
{
alert("Please Provide valid Phone Number");
document.f1.contact.focus();
return false;
} 
var gender=document.getElementById("gender").value;
if(gender=="0")
{
alert("Please Choose your gender");
document.f1.gender.focus();
return false;
}
var pswd=document.getElementById("id_password").value;
if(pswd=="")
{
alert("Please Enter your Password");
document.f1.password.focus();
return false;
}
else
{
if(pswd.length<6 || pswd.length>12)
{
alert("Please provide a Password with greater than 6 and lesser than 12 characters");
document.f1.password.focus();
return false;
}
}
var cpswd=document.getElementById("id_con_password").value;
if(cpswd=="")
{
alert("Please Enter your Confirm Password");
document.f1.confirm_password.focus();
return false;
}
else
{
if(pswd!=cpswd)
{
alert("Password dose not matching")
document.f1.confirm_password.focus();
return false;
}
}
return true;
}
var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];    
function upload_Validate(oForm) {
  filename=document.getElementById("file1").value;
    if(filename=="")
        {
           alert("Choose your  picture");  
           document.f1.file.focus();
           return false;
        }
        else
            {
  var arrInputs = oForm.getElementsByTagName("input");
    for (var i = 0; i < arrInputs.length; i++) {
        var oInput = arrInputs[i];
        if (oInput.type == "file") {
            var sFileName = oInput.value;
            if (sFileName.length > 0) {
                var blnValid = false;
                for (var j = 0; j < _validFileExtensions.length; j++) {
                    var sCurExtension = _validFileExtensions[j];
                    if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                        blnValid = true;
                        break;
                    }
                }
                
                if (!blnValid) {
                    alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                    return false;
                }
            }
        }
    }
            }
    return true;
}
