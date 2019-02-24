<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Admin_Paste.aspx.cs" Inherits="Admin_Paste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" DeleteCommand="DELETE FROM [Paste] WHERE [PasteId] = @original_PasteId AND (([PasteName] = @original_PasteName) OR ([PasteName] IS NULL AND @original_PasteName IS NULL)) AND (([PasteUserName] = @original_PasteUserName) OR ([PasteUserName] IS NULL AND @original_PasteUserName IS NULL)) AND (([PasteDate] = @original_PasteDate) OR ([PasteDate] IS NULL AND @original_PasteDate IS NULL)) AND (([PasteKind] = @original_PasteKind) OR ([PasteKind] IS NULL AND @original_PasteKind IS NULL))" InsertCommand="INSERT INTO [Paste] ([PasteName], [PasteUserName], [PasteDate], [PasteKind]) VALUES (@PasteName, @PasteUserName, @PasteDate, @PasteKind)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paste] ORDER BY [PasteDate] DESC" UpdateCommand="UPDATE [Paste] SET [PasteName] = @PasteName, [PasteUserName] = @PasteUserName, [PasteDate] = @PasteDate, [PasteKind] = @PasteKind WHERE [PasteId] = @original_PasteId AND (([PasteName] = @original_PasteName) OR ([PasteName] IS NULL AND @original_PasteName IS NULL)) AND (([PasteUserName] = @original_PasteUserName) OR ([PasteUserName] IS NULL AND @original_PasteUserName IS NULL)) AND (([PasteDate] = @original_PasteDate) OR ([PasteDate] IS NULL AND @original_PasteDate IS NULL)) AND (([PasteKind] = @original_PasteKind) OR ([PasteKind] IS NULL AND @original_PasteKind IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PasteId" Type="Int32" />
            <asp:Parameter Name="original_PasteName" Type="String" />
            <asp:Parameter Name="original_PasteUserName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_PasteDate" />
            <asp:Parameter Name="original_PasteKind" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PasteName" Type="String" />
            <asp:Parameter Name="PasteUserName" Type="String" />
            <asp:Parameter DbType="Date" Name="PasteDate" />
            <asp:Parameter Name="PasteKind" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PasteName" Type="String" />
            <asp:Parameter Name="PasteUserName" Type="String" />
            <asp:Parameter DbType="Date" Name="PasteDate" />
            <asp:Parameter Name="PasteKind" Type="String" />
            <asp:Parameter Name="original_PasteId" Type="Int32" />
            <asp:Parameter Name="original_PasteName" Type="String" />
            <asp:Parameter Name="original_PasteUserName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_PasteDate" />
            <asp:Parameter Name="original_PasteKind" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PasteId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="923px" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:CommandField SelectText="点击选中" ShowDeleteButton="True" ShowSelectButton="True">
            <ControlStyle BackColor="#FF99FF" BorderColor="#CC66FF" BorderStyle="Double" Font-Names="Adobe 仿宋 Std R" />
            <FooterStyle BackColor="#FF3399" BorderColor="White" BorderStyle="Dotted" Font-Names="Adobe Devanagari" />
            <HeaderStyle Font-Names="Adobe Hebrew" />
            <ItemStyle BackColor="#FFCCFF" BorderColor="#CC66FF" BorderStyle="Ridge" Font-Names="Adobe Garamond Pro" />
            </asp:CommandField>
            <asp:BoundField DataField="PasteId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="PasteId" />
            <asp:TemplateField HeaderText="帖名" SortExpression="PasteName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PasteName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PasteId", "Admin_paste_view.aspx?id={0}") %>' Text='<%# Eval("PasteName") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PasteUserName" HeaderText="发帖用户" SortExpression="PasteUserName" />
            <asp:BoundField DataField="PasteDate" HeaderText="发帖日期" SortExpression="PasteDate" />
            <asp:BoundField DataField="PasteKind" HeaderText="类别" SortExpression="PasteKind" />
        </Columns>
    </asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PasteId" DataSourceID="SqlDataSource2" Height="50px" Width="1023px">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="PasteName" HeaderText="帖名" SortExpression="PasteName" />
        <asp:BoundField DataField="PasteUserName" HeaderText="发帖人" SortExpression="PasteUserName" />
        <asp:BoundField DataField="PasteDate" HeaderText="发帖日期" SortExpression="PasteDate" />
        <asp:BoundField DataField="PasteKind" HeaderText="类别" SortExpression="PasteKind" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" DeleteCommand="DELETE FROM [Paste] WHERE [PasteId] = @original_PasteId AND (([PasteName] = @original_PasteName) OR ([PasteName] IS NULL AND @original_PasteName IS NULL)) AND (([PasteUserName] = @original_PasteUserName) OR ([PasteUserName] IS NULL AND @original_PasteUserName IS NULL)) AND (([PasteDate] = @original_PasteDate) OR ([PasteDate] IS NULL AND @original_PasteDate IS NULL)) AND (([PasteKind] = @original_PasteKind) OR ([PasteKind] IS NULL AND @original_PasteKind IS NULL))" InsertCommand="INSERT INTO [Paste] ([PasteName], [PasteUserName], [PasteDate], [PasteKind]) VALUES (@PasteName, @PasteUserName, @PasteDate, @PasteKind)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Paste] WHERE ([PasteId] = @PasteId)" UpdateCommand="UPDATE [Paste] SET [PasteName] = @PasteName, [PasteUserName] = @PasteUserName, [PasteDate] = @PasteDate, [PasteKind] = @PasteKind WHERE [PasteId] = @original_PasteId AND (([PasteName] = @original_PasteName) OR ([PasteName] IS NULL AND @original_PasteName IS NULL)) AND (([PasteUserName] = @original_PasteUserName) OR ([PasteUserName] IS NULL AND @original_PasteUserName IS NULL)) AND (([PasteDate] = @original_PasteDate) OR ([PasteDate] IS NULL AND @original_PasteDate IS NULL)) AND (([PasteKind] = @original_PasteKind) OR ([PasteKind] IS NULL AND @original_PasteKind IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_PasteId" Type="Int32" />
        <asp:Parameter Name="original_PasteName" Type="String" />
        <asp:Parameter Name="original_PasteUserName" Type="String" />
        <asp:Parameter DbType="Date" Name="original_PasteDate" />
        <asp:Parameter Name="original_PasteKind" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PasteName" Type="String" />
        <asp:Parameter Name="PasteUserName" Type="String" />
        <asp:Parameter DbType="Date" Name="PasteDate" />
        <asp:Parameter Name="PasteKind" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="PasteId" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="PasteName" Type="String" />
        <asp:Parameter Name="PasteUserName" Type="String" />
        <asp:Parameter DbType="Date" Name="PasteDate" />
        <asp:Parameter Name="PasteKind" Type="String" />
        <asp:Parameter Name="original_PasteId" Type="Int32" />
        <asp:Parameter Name="original_PasteName" Type="String" />
        <asp:Parameter Name="original_PasteUserName" Type="String" />
        <asp:Parameter DbType="Date" Name="original_PasteDate" />
        <asp:Parameter Name="original_PasteKind" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>


