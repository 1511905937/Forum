<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_register.aspx.cs" Inherits="Admin_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            font-weight :200 ;      
            background:url(image/6.gif);
        }
        h1 {
            text-align:center;
        }
        table{
            text-align :center ;
        }
        .auto-style13 {
            text-align : right;
            width: 588px;
            height: 55px;
        }
        .auto-style14 {
            height: 55px;
            text-align :left ;
        }
        .auto-style11 {
            text-align : right;
            width: 588px;
            height: 65px;
        }
        .auto-style15 {
            text-align : right;
            width: 588px;
            height: 71px;
        }
        .auto-style9 {
            text-align : right;
            width: 588px;
        }
        .auto-style25 {
            height: 9px;
            text-align :center;
        }
        .auto-style26 {
            text-align : center;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Admin_register.aspx">管理员注册</asp:HyperLink>
        </h1>
        <table style="width:100%; height: 680px;">
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr>
                <td  class="auto-style13">姓名：</td>
               <td class="auto-style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="211px" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="姓名不能为空" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style11">密码：</td>
                <td class="auto-style14">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="TextBox2" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style15">确认密码：</td>
                <td class="auto-style14">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox3" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次输入密码不一样" ForeColor="#990000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style9">年龄：</td>
                <td class="auto-style14">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox5" runat="server" Width="211px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="年龄在0到150之间" ForeColor="#990000" MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td   class="auto-style15">邮箱：</td>
                <td class="auto-style14">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox8" runat="server" Width="211px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="邮箱格式不正确" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style26" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" Width="100px" /> &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;</td>


            </tr>
            <tr>
               <td class="auto-style25" colspan="2">
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                <a href="index2.aspx">返回主页</a></td>

            </tr>
        </table>
    
    </div>
    </form>
   
</body>
</html>
