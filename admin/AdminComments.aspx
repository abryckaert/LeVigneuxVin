    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminComments.aspx.cs" Inherits="AdminComments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        Manage comments:
    </h2>
        <div style="padding-left:11%">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reviewTitle" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="reviewTitle" HeaderText="reviewTitle" ReadOnly="True" SortExpression="reviewTitle" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="userNickname" HeaderText="userNickname" SortExpression="userNickname" />
                <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
                <asp:BoundField DataField="reviewId" HeaderText="reviewId" SortExpression="reviewId" />
                <asp:BoundField DataField="vineName" HeaderText="vineName" SortExpression="vineName" />
            </Columns>
        </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [review] WHERE [reviewTitle] = @original_reviewTitle AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([userNickname] = @original_userNickname) OR ([userNickname] IS NULL AND @original_userNickname IS NULL)) AND (([score] = @original_score) OR ([score] IS NULL AND @original_score IS NULL)) AND (([reviewId] = @original_reviewId) OR ([reviewId] IS NULL AND @original_reviewId IS NULL)) AND (([vineName] = @original_vineName) OR ([vineName] IS NULL AND @original_vineName IS NULL))" InsertCommand="INSERT INTO [review] ([reviewTitle], [date], [description], [userNickname], [score], [reviewId], [vineName]) VALUES (@reviewTitle, @date, @description, @userNickname, @score, @reviewId, @vineName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [review]" UpdateCommand="UPDATE [review] SET [date] = @date, [description] = @description, [userNickname] = @userNickname, [score] = @score, [reviewId] = @reviewId, [vineName] = @vineName WHERE [reviewTitle] = @original_reviewTitle AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([userNickname] = @original_userNickname) OR ([userNickname] IS NULL AND @original_userNickname IS NULL)) AND (([score] = @original_score) OR ([score] IS NULL AND @original_score IS NULL)) AND (([reviewId] = @original_reviewId) OR ([reviewId] IS NULL AND @original_reviewId IS NULL)) AND (([vineName] = @original_vineName) OR ([vineName] IS NULL AND @original_vineName IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_reviewTitle" Type="String" />
        <asp:Parameter DbType="Date" Name="original_date" />
        <asp:Parameter Name="original_description" Type="String" />
        <asp:Parameter Name="original_userNickname" Type="String" />
        <asp:Parameter Name="original_score" Type="Int32" />
        <asp:Parameter Name="original_reviewId" Type="Int32" />
        <asp:Parameter Name="original_vineName" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="reviewTitle" Type="String" />
        <asp:Parameter DbType="Date" Name="date" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="userNickname" Type="String" />
        <asp:Parameter Name="score" Type="Int32" />
        <asp:Parameter Name="reviewId" Type="Int32" />
        <asp:Parameter Name="vineName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="date" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="userNickname" Type="String" />
        <asp:Parameter Name="score" Type="Int32" />
        <asp:Parameter Name="reviewId" Type="Int32" />
        <asp:Parameter Name="vineName" Type="String" />
        <asp:Parameter Name="original_reviewTitle" Type="String" />
        <asp:Parameter DbType="Date" Name="original_date" />
        <asp:Parameter Name="original_description" Type="String" />
        <asp:Parameter Name="original_userNickname" Type="String" />
        <asp:Parameter Name="original_score" Type="Int32" />
        <asp:Parameter Name="original_reviewId" Type="Int32" />
        <asp:Parameter Name="original_vineName" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
            </div>
    <br />
</asp:Content>

