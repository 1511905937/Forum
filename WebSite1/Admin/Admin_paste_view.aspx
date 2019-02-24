<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_paste_view.aspx.cs" Inherits="Admin_paste_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContentId" DataSourceID="SqlDataSource2" Width="1009px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDeleting="GridView2_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="用户" HeaderText="用户" SortExpression="用户" />
            <asp:BoundField DataField="内容" HeaderText="内容" SortExpression="内容" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:fornumConnectionString %>" DeleteCommand="DELETE FROM [Content] WHERE [ContentId] = @original_ContentId AND [PasteId] = @original_PasteId AND (([用户] = @original_用户) OR ([用户] IS NULL AND @original_用户 IS NULL)) AND (([内容] = @original_内容) OR ([内容] IS NULL AND @original_内容 IS NULL))" InsertCommand="INSERT INTO [Content] ([PasteId], [用户], [内容]) VALUES (@PasteId, @用户, @内容)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Content] WHERE ([PasteId] = @PasteId)" UpdateCommand="UPDATE [Content] SET [PasteId] = @PasteId, [用户] = @用户, [内容] = @内容 WHERE [ContentId] = @original_ContentId AND [PasteId] = @original_PasteId AND (([用户] = @original_用户) OR ([用户] IS NULL AND @original_用户 IS NULL)) AND (([内容] = @original_内容) OR ([内容] IS NULL AND @original_内容 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ContentId" Type="Int32" />
            <asp:Parameter Name="original_PasteId" Type="Int32" />
            <asp:Parameter Name="original_用户" Type="String" />
            <asp:Parameter Name="original_内容" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PasteId" Type="Int32" />
            <asp:Parameter Name="用户" Type="String" />
            <asp:Parameter Name="内容" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="PasteId" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PasteId" Type="Int32" />
            <asp:Parameter Name="用户" Type="String" />
            <asp:Parameter Name="内容" Type="String" />
            <asp:Parameter Name="original_ContentId" Type="Int32" />
            <asp:Parameter Name="original_PasteId" Type="Int32" />
            <asp:Parameter Name="original_用户" Type="String" />
            <asp:Parameter Name="original_内容" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


