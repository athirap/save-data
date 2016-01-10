<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp; &nbsp<asp:TextBox ID="tid" runat="server"></asp:TextBox> <br />
        <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp&nbsp<asp:TextBox ID="tname" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="JOB"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tjob" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="EMAIL"></asp:Label>&nbsp;&nbsp;&nbsp&nbsp<asp:TextBox ID="temail" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tdob" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Text="PHONE"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tphno" runat="server"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="SAVE" style="width: 54px" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;</div>
        
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
        </asp:GridView>
        
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:detailsConnectionString2 %>" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
        
        
        
    </form>
</body>
</html>
