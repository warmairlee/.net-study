<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewnote.aspx.cs" Inherits="notecont" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1
        {
            height: 475px;
            width: 401px;
        }
        .bg {
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            width:605px;
            background: url(../image/note/bg.png) no-repeat;
            height: 750px;
            background-size:100% 100%;
        }
        .but{
         width:100px;
         height:30px;
         position:relative;
         margin-left:auto;
         margin-right:auto;
         top:-10px;
        }
     .but a:link{
         background:url(../image/note/cgbut.png) no-repeat 0px 0px ;
         display:block;
         height:30px;
     }
     .but a:hover{
         background:url(../image/note/cgbut2.png) no-repeat 0px 0px;
         display:block;
         height:30px;
     }
        #form1 {
            height: 614px;
        }
    </style>
</head>
<body>
    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="25px" PathSeparator=" : ">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#284E98" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
        <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
    </asp:SiteMapPath>
    <div class="bg">
     <div style="position:relative;top=20px: 577px; 573px:; top: 71px; left: 0px; height: 633px;">
    <form id="form1" runat="server">
    
    
        <div style="width:94px; height:43px; margin-left:auto;margin-right:auto"><img style="height:100%; width: 90px;" src="image/note/title.png" /></div>
        <br /><asp:TextBox ID="TextBox1" runat="server" Width="380px" BorderColor="White" BorderWidth="0px" Font-Size="25px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <div style="width:94px; height:43px; margin-left:auto;margin-right:auto"><img style="height:100%; width: 90px;" src="image/note/title2.png" /></div>
        <asp:TextBox ID="TextBox2" 
            runat="server" Height="394px" TextMode="MultiLine" Width="380px" BorderColor="White" Font-Size="20px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <div class="but"><a runat="server" onserverclick="Button1_Click" href="#"></a></div>
    
    
    </form>
        </div>
    </div>
</body>
</html>
