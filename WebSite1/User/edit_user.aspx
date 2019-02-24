<%@ Page Title="" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="edit_user.aspx.cs" Inherits="edit_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <br /><br />
  &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
    <br /> <br />
   
   &nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="年龄："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br /> <br />
   &nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="工作："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> <br /> <br />
   &nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="邮箱："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> <br /> <br />
   &nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="性别："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem>男</asp:ListItem>
        <asp:ListItem>女</asp:ListItem>
  </asp:RadioButtonList> <br />
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="原始密码："></asp:Label>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
    <br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="新密码："></asp:Label> &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
    <br /> <br />
    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
</asp:Content>

