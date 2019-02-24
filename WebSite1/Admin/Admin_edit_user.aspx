<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Admin_edit_user.aspx.cs" Inherits="Admin_del_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
    <asp:Label ID="Label1" runat="server" Text="用户管理："></asp:Label><br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserName" DataSourceID="SqlDataSource1" Height="326px" Width="656px" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:CommandField HeaderText="选择" SelectText="点击选中" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
            <ControlStyle BackColor="#FF66FF" BorderColor="#FFCCFF" BorderStyle="Solid" Font-Bold="False" Font-Names="Adobe Hebrew" Font-Overline="False" />
            <FooterStyle BackColor="#FF9999" BorderColor="#CC00FF" BorderStyle="Double" Font-Names="Adobe Garamond Pro" />
            <HeaderStyle BackColor="#FF6666" BorderColor="#FF99FF" BorderStyle="Ridge" Font-Names="Adobe Naskh Medium" />
            <ItemStyle BackColor="#FF99CC" BorderColor="#FFCC99" BorderStyle="Groove" Font-Names="Adobe Garamond Pro Bold" />
            </asp:CommandField>
            <asp:BoundField DataField="UserName" HeaderText="姓名" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="密码" SortExpression="UserPassword" />
            <asp:BoundField DataField="UserAge" HeaderText="年龄" SortExpression="UserAge" />
            <asp:BoundField DataField="UserSex" HeaderText="性别" SortExpression="UserSex" />
            <asp:BoundField DataField="UserEmail" HeaderText="邮箱" SortExpression="UserEmail" />
            <asp:BoundField DataField="UserJob" HeaderText="工作" SortExpression="UserJob" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" DeleteCommand="DELETE FROM [User_M] WHERE [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserAge] = @original_UserAge) OR ([UserAge] IS NULL AND @original_UserAge IS NULL)) AND (([UserSex] = @original_UserSex) OR ([UserSex] IS NULL AND @original_UserSex IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserJob] = @original_UserJob) OR ([UserJob] IS NULL AND @original_UserJob IS NULL))" InsertCommand="INSERT INTO [User_M] ([UserName], [UserPassword], [UserAge], [UserSex], [UserEmail], [UserJob]) VALUES (@UserName, @UserPassword, @UserAge, @UserSex, @UserEmail, @UserJob)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User_M]" UpdateCommand="UPDATE [User_M] SET [UserPassword] = @UserPassword, [UserAge] = @UserAge, [UserSex] = @UserSex, [UserEmail] = @UserEmail, [UserJob] = @UserJob WHERE [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserAge] = @original_UserAge) OR ([UserAge] IS NULL AND @original_UserAge IS NULL)) AND (([UserSex] = @original_UserSex) OR ([UserSex] IS NULL AND @original_UserSex IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserJob] = @original_UserJob) OR ([UserJob] IS NULL AND @original_UserJob IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserAge" Type="Int32" />
            <asp:Parameter Name="original_UserSex" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserJob" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserAge" Type="Int32" />
            <asp:Parameter Name="UserSex" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserJob" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserAge" Type="Int32" />
            <asp:Parameter Name="UserSex" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserJob" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserAge" Type="Int32" />
            <asp:Parameter Name="original_UserSex" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserJob" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" DeleteCommand="DELETE FROM [User_M] WHERE [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserAge] = @original_UserAge) OR ([UserAge] IS NULL AND @original_UserAge IS NULL)) AND (([UserSex] = @original_UserSex) OR ([UserSex] IS NULL AND @original_UserSex IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserJob] = @original_UserJob) OR ([UserJob] IS NULL AND @original_UserJob IS NULL))" InsertCommand="INSERT INTO [User_M] ([UserName], [UserPassword], [UserAge], [UserSex], [UserEmail], [UserJob]) VALUES (@UserName, @UserPassword, @UserAge, @UserSex, @UserEmail, @UserJob)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User_M] WHERE ([UserName] = @UserName2)" UpdateCommand="UPDATE [User_M] SET [UserPassword] = @UserPassword, [UserAge] = @UserAge, [UserSex] = @UserSex, [UserEmail] = @UserEmail, [UserJob] = @UserJob WHERE [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserAge] = @original_UserAge) OR ([UserAge] IS NULL AND @original_UserAge IS NULL)) AND (([UserSex] = @original_UserSex) OR ([UserSex] IS NULL AND @original_UserSex IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserJob] = @original_UserJob) OR ([UserJob] IS NULL AND @original_UserJob IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserAge" Type="Int32" />
            <asp:Parameter Name="original_UserSex" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserJob" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserAge" Type="Int32" />
            <asp:Parameter Name="UserSex" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserJob" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="UserName2" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserAge" Type="Int32" />
            <asp:Parameter Name="UserSex" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserJob" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserAge" Type="Int32" />
            <asp:Parameter Name="original_UserSex" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserJob" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br /><asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="502px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="UserName" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="UserName" HeaderText="姓名：" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="UserPassword" HeaderText="密码：" SortExpression="UserPassword" />
            <asp:BoundField DataField="UserAge" HeaderText="年龄：" SortExpression="UserAge" />
            <asp:BoundField DataField="UserSex" HeaderText="性别：" SortExpression="UserSex" />
            <asp:BoundField DataField="UserEmail" HeaderText="邮箱：" SortExpression="UserEmail" />
            <asp:BoundField DataField="UserJob" HeaderText="工作：" SortExpression="UserJob" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>


