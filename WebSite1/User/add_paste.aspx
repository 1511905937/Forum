<%@ Page Title="" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="add_paste.aspx.cs" Inherits="add_paste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="发起话题"></asp:Label><br /><br />
    <asp:Label ID="Label2" runat="server" Text="种类"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="不能为空" ForeColor="#990000"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:TextBox ID="TextBox1" runat="server" Height="204px" TextMode="MultiLine" Width="344px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="不能为空" ForeColor="#990000"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="发起" OnClick="Button1_Click" />
</asp:Content>

