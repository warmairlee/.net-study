<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
       .reg{
         width:70px;
         height:30px;
         position:relative;
         left:240px;
        }
     .reg a:link{
         background:url(../image/reg/reg.png) no-repeat 0px 0px ;
         display:block;
         height:30px;
     }
     .reg a:hover{
         background:url(../image/reg/reg2.png) no-repeat 0px 0px;
         display:block;
         height:30px;
     }
    </style>
</head>
<body style="height: 654px">
    <br />
    <br />
    <div style="margin-left:auto;margin-right:auto;width:900px;height:80px;"><img src="image/reg/logtit.png" style="width: 894px"/></div>
    <br />
    <div style="margin-left:auto;margin-right:auto;width:427px; height:351px; margin-top:150px;">
      <form style="font-family: 新宋体; height: 351px; width: 650px;" id="form1" runat="server">
        <img src="image/reg/id.png" style="height: 38px; width: 120px"/>
          <div style="position:relative;left:130px; top:-30px; width:200px; height:25px;"><asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="193px" BorderColor="White" BorderWidth="0px" Font-Size="24px"></asp:TextBox></div>
        <img src="image/reg/passwd.png" style="height: 32px; width: 120px"/> 
          <div style="position:relative;left:130px; top:-30px; width:200px; height:25px;"><asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="190px" BorderColor="White" BorderWidth="0px" Font-Size="24px" TextMode="Password"></asp:TextBox>
              <br />
          </div>
        <img src="image/reg/passwd2.png" style="height: 32px; width: 120px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次输入密码不同" ForeColor="#FF4848"></asp:CompareValidator>
&nbsp;<div style="position:relative;left:130px; top:-30px; width:200px; height:25px;">
              <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="190px" BorderColor="White" BorderWidth="0px" Font-Size="24px" TextMode="Password"></asp:TextBox>
          </div>
          <img src="image/reg/email.png" style="height: 35px; width: 120px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="请输入正确邮箱地址" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF4848"></asp:RegularExpressionValidator>
&nbsp;<div style="position:relative;left:132px; top:-31px; width:240px; height:25px;">
              <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="240px" BorderColor="White" BorderWidth="0px" Font-Size="24px" ></asp:TextBox>
          </div>
          <br />
          <div class="reg"><a runat="server" onserverclick="Button1_Click" href="#"></a></div>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.aspx" style="color:gray;text-decoration:none;font-size:15px;">已有账号？点击登录！</a>
      </form>
    </div>
    <br /><br />
    <div style="float:right;margin-left:auto;margin-right:auto;margin-bottom:10px;width:515px; height:40px;"><img src="image/reg/bottom.png" style="width: 283px; height: 31px;"/></div>
</body>
</html>
