<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paste.aspx.cs" Inherits="paste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            font-family :YouYuan ;
            
            background:url(image/4.gif)  no-repeat  120px 0px;
        }
        #one{
          
            width:55%;
            height:900px;
            float:left;
        }
        #two{
             width:20%;
            height:1200px;
             float:left;
        }
        #three{
             width:20%;
            height:1200px;
             float:left;
        }
        #oneone{
            text-align :center ;
            width :70%;
            float:right ;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="oneone"><a href="index2.aspx">返回主页</a></div>
    <div id="two">
    
    </div>
    <div id="one">
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" SelectCommand="SELECT [用户], [内容] FROM [Content]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">用户:
                    <asp:Label ID="用户Label" runat="server" Text='<%# Eval("用户") %>' />
                    <br />
                    内容:
                    <asp:Label ID="内容Label" runat="server" Text='<%# Eval("内容") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">用户:
                    <asp:TextBox ID="用户TextBox" runat="server" Text='<%# Bind("用户") %>' />
                    <br />
                    内容:
                    <asp:TextBox ID="内容TextBox" runat="server" Text='<%# Bind("内容") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                未返回数据。
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">用户:
                    <asp:TextBox ID="用户TextBox" runat="server" Text='<%# Bind("用户") %>' />
                    <br />
                    内容:
                    <asp:TextBox ID="内容TextBox" runat="server" Text='<%# Bind("内容") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">用户:
                    <asp:Label ID="用户Label" runat="server" Text='<%# Eval("用户") %>' />
                    <br />
                    内容:
                    <asp:Label ID="内容Label" runat="server" Text='<%# Eval("内容") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">用户:
                    <asp:Label ID="用户Label" runat="server" Text='<%# Eval("用户") %>' />
                    <br />
                    内容:
                    <asp:Label ID="内容Label" runat="server" Text='<%# Eval("内容") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        我要评论：
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="157px" TextMode="MultiLine" Width="378px"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
    </div>
    <div id="three">


    </div>
    </form>
</body>
</html>
