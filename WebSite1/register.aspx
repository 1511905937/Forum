<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{

        }
        .one {
            text-align :right;
        }
        .two {
            text-align :left;
        }
        .auto-style5 {
            text-align : right;
            width: 435px;
            height: 81px;
        }
        .auto-style9 {
            text-align : right;
            width: 435px;
            height: 76px;
        }
        .auto-style11 {
            text-align : right;
            width: 435px;
            height: 65px;
        }
        .auto-style13 {
            text-align : right;
            width: 435px;
            height: 55px;
        }
        .auto-style14 {
            height: 55px;
            text-align :left;
        }
        .auto-style15 {
            text-align : right;
            width: 435px;
            height: 71px;
        }
        .auto-style21 {
            text-align : right;
            width: 435px;
            height: 79px;
        }
        .auto-style23 {
            text-align : right;
            width: 435px;
            height: 158px;
        }
        h1 {
            text-align:center;
        }
        body {
            font-family: 幼圆;
        }
        .auto-style25 {
            height: 9px;
            text-align :left ;
        }
        table{
            text-align :center ;
        }
        #one{
            background-image:url(image/1.gif);
            left :160px;
            position :absolute ;
            top:100px;
        }
        .auto-style26 {
            width: 172%;
            height: 649px;
        }
       
        .auto-style27 {
            left: 200px;
            top: 100px;
            width: 1070px;
            height: 815px;
            margin-right: 0px;
        }
        .auto-style28 {
            width: 529px;
        }
        .hehe{
            text-align :center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="one" class="auto-style27">
    <div>
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Admin_register.aspx">管理员注册</asp:HyperLink>
    <h1>&nbsp;</h1>
        <br />
        <br />
     
       
        <h1 class="auto-style28">注册</h1>
        
        <table class="auto-style26">
            
            <tr>
                <td  class="auto-style13">姓名：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Width="211px" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" ControlToValidate="TextBox1" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style11">密码：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ControlToValidate="TextBox2" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style15">确认密码：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Width="211px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不相同" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="#990000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style9">性别：</td>
                <td class="auto-style14">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="必须选择性别" ControlToValidate="RadioButtonList1" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">年龄：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="211px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="年龄在0到150之间" ControlToValidate="TextBox5" ForeColor="#990000" MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td   class="auto-style15">邮箱：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox8" runat="server" Width="211px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="格式不正确" ControlToValidate="TextBox8" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td  class="auto-style21">工作：</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server" Width="211px"></asp:TextBox>
                </td>


            </tr>
             <tr>
               
                  <td class="hehe" colspan="2">
                  
                      &nbsp;</td>

            </tr>
            <tr>
                <td  class="auto-style23">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style14">
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
                </td>


            </tr>
            
            <tr>
               <td class="auto-style25" colspan="2">
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                <a href="index2.aspx">返回主页</a></td>

            </tr>
            
        </table>
    
    </div>
            </div>
    </form>
</body>
</html>
