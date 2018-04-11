<%@ Page Language="C#" AutoEventWireup="true" CodeFile="note.aspx.cs" Inherits="note" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    .bg {
            text-align:center;
            margin-left:auto;
            margin-right:auto;
            width:605px;
            background: url(../image/note/bg.png) no-repeat;
            height: 750px;
            background-size:100% 100%;
            position:relative;
            top:-30px;
        }
       .add{
         width:120px;
         height:30px;
         margin-left:auto;
         margin-right:auto;
         position:relative;
         top:20px;
    }
     .add a{
         background:url(../image/note/add.png) no-repeat 0px 0px ;
         display:block;
         height:30px;
     }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="25px" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#284E98" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
            <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
        </asp:SiteMapPath>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NoteDBConnectionString2 %>" SelectCommand="SELECT [num], [title], [abs] FROM [note]"></asp:SqlDataSource>
        <div class="bg">
          <div style="position:relative; margin-left:auto;margin-right:auto; width:475px; height: 617px; top:70px; left: 0px;">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="469px" Font-Size="Medium" OnSelectedIndexChanged="GridView1_Selecct" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="num" HeaderText="No." InsertVisible="False" ReadOnly="True" SortExpression="num" />
                    <asp:BoundField DataField="title" HeaderImageUrl="~/image/note/tit.png" HeaderText="title" SortExpression="title">
                    </asp:BoundField>
                    <asp:BoundField DataField="abs" HeaderImageUrl="~/image/note/abs.png" HeaderText="abs" SortExpression="abs">
                    <ControlStyle Font-Size="Small"/>
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True">
                    <ControlStyle Width="50px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True" />

                </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="从前" LastPageText="今天" Mode="NextPreviousFirstLast" NextPageText="下一步" PreviousPageText="上一步" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
          </div>
           <div class="add"><a runat="server" onserverclick="Button1_Click" href="#"></a></div>
        </div>
        <br />
         
    
    </div>
    </form>
</body>
</html>
