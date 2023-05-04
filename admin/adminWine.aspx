<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="adminWine.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Manage Wines : </h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="domaine" HeaderText="domaine" SortExpression="domaine" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="rank" HeaderText="rank" SortExpression="rank" />
            <asp:BoundField DataField="IdImage" HeaderText="IdImage" SortExpression="IdImage" />
            <asp:BoundField DataField="vigneronName" HeaderText="vigneronName" SortExpression="vigneronName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [wine] WHERE [name] = @original_name AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND (([domaine] = @original_domaine) OR ([domaine] IS NULL AND @original_domaine IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([rank] = @original_rank) OR ([rank] IS NULL AND @original_rank IS NULL)) AND (([IdImage] = @original_IdImage) OR ([IdImage] IS NULL AND @original_IdImage IS NULL)) AND (([vigneronName] = @original_vigneronName) OR ([vigneronName] IS NULL AND @original_vigneronName IS NULL))" InsertCommand="INSERT INTO [wine] ([name], [type], [domaine], [description], [price], [rank], [IdImage], [vigneronName]) VALUES (@name, @type, @domaine, @description, @price, @rank, @IdImage, @vigneronName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [wine]" UpdateCommand="UPDATE [wine] SET [type] = @type, [domaine] = @domaine, [description] = @description, [price] = @price, [rank] = @rank, [IdImage] = @IdImage, [vigneronName] = @vigneronName WHERE [name] = @original_name AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND (([domaine] = @original_domaine) OR ([domaine] IS NULL AND @original_domaine IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([rank] = @original_rank) OR ([rank] IS NULL AND @original_rank IS NULL)) AND (([IdImage] = @original_IdImage) OR ([IdImage] IS NULL AND @original_IdImage IS NULL)) AND (([vigneronName] = @original_vigneronName) OR ([vigneronName] IS NULL AND @original_vigneronName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_domaine" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_rank" Type="String" />
            <asp:Parameter Name="original_IdImage" Type="String" />
            <asp:Parameter Name="original_vigneronName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="domaine" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="rank" Type="String" />
            <asp:Parameter Name="IdImage" Type="String" />
            <asp:Parameter Name="vigneronName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="domaine" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="rank" Type="String" />
            <asp:Parameter Name="IdImage" Type="String" />
            <asp:Parameter Name="vigneronName" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_domaine" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_rank" Type="String" />
            <asp:Parameter Name="original_IdImage" Type="String" />
            <asp:Parameter Name="original_vigneronName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

