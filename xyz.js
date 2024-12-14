function uemail()
{
    x=document.getElementById("t2").value;
    if(x.length<10)
    {
        document.getElementById("s2").innerHTML="Invalid Email";
        return false;
    }
    else
    {
        return true;
    }
}
function upass()
{
    x=document.getElementById("t3").value;
    if(x.length<5)
    {
        document.getElementById("s3").innerHTML="Invalid pass";
        return false;
    }
    else
    {
        return true;
    }
}
function demo()
{
    document.getElementById("s2").innerHTML="";
    document.getElementById("s3").innerHTML="";
    
    if(uemail() && upass())
    {
        form1.submit();
    }
    
 }
    
