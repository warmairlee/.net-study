<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <style type="text/css">
       .login{
         width:70px;
         height:30px;
         position:relative;
         left:240px;
        }
     .login a:link{
         background:url(../image/login/login.png) no-repeat 0px 0px ;
         display:block;
         height:30px;
     }
     .login a:hover{
         background:url(../image/login/login2.png) no-repeat 0px 0px;
         display:block;
         height:30px;
     }
    </style>
</head>
<body style="height: 590px">
    <br />
    <br />
    <div style="margin-left:auto;margin-right:auto;width:900px;height:80px;"><img src="image/login/logtit.png" style="width: 894px"/></div>
    <br />
    <div style="margin-left:auto;margin-right:auto;width:379px; height:277px; margin-top:150px;">
      <form style="font-family: 新宋体; width: 384px; height: 275px;" id="form1" runat="server">
        <img src="image/login/id.png" style="height: 38px; width: 120px"/>
          <div style="position:relative;left:130px; top:-30px; width:200px; height:25px;"><asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="193px" BorderWidth="0px" Font-Size="24px"></asp:TextBox></div>
          <br />
        <br />
        <img src="image/login/passwd.png" style="height: 32px; width: 120px"/> 
          <div style="position:relative;left:130px; top:-30px; width:200px; height:25px;"><asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="190px" BorderWidth="0px" Font-Size="24px" TextMode="Password"></asp:TextBox></div>
          <br />
          <div class="login"><a runat="server" onserverclick="Button1_Click" href="#"></a></div>
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
          <a href="reg.aspx" style="color:gray;text-decoration:none;font-size:15px;">没有账号？点击注册！</a>
      </form>
    </div>
    <br /><br />
    <div style="float:right;margin-left:auto;margin-right:auto;margin-bottom:10px;width:515px; height:40px;"><img src="image/login/bottom.png" style="width: 283px; height: 31px;"/></div>
</body>
</html>
