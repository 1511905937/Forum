<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regin.aspx.cs" Inherits="regin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
           
            background:url(image/4.jpg) fixed center center  no-repeat #a4ed8b ;
           
        }
        img{
            height:auto;
            width:100%;
        }
        h1{
            font-family :YouYuan ;
            text-align :center ;
        }
        #one{
            position :absolute ; 
            left:650px;
            top:200px;
        }
        .auto-style1 {
            left: 626px;
            top: 500px;
            width: 274px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a href="index2.aspx">返回主页</a>
    <div id="one" class="auto-style1">
        <h1>登录</h1>
        <p>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>普通用户</asp:ListItem>
                <asp:ListItem>本站管理员</asp:ListItem>
            </asp:DropDownList>
        </p>
         用户名：
               
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br /> <br />
             
         密&nbsp;码：&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
               
               <br /><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />
          
    </div>
    </form>
</body>
</html>
