<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="adminUsers.aspx.cs" Inherits="adminUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Users :</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="PasswordFormat" HeaderText="PasswordFormat" SortExpression="PasswordFormat" />
            <asp:BoundField DataField="MobilePIN" HeaderText="MobilePIN" SortExpression="MobilePIN" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="LoweredEmail" HeaderText="LoweredEmail" SortExpression="LoweredEmail" />
            <asp:BoundField DataField="PasswordQuestion" HeaderText="PasswordQuestion" SortExpression="PasswordQuestion" />
            <asp:BoundField DataField="PasswordAnswer" HeaderText="PasswordAnswer" SortExpression="PasswordAnswer" />
            <asp:CheckBoxField DataField="IsApproved" HeaderText="IsApproved" SortExpression="IsApproved" />
            <asp:CheckBoxField DataField="IsLockedOut" HeaderText="IsLockedOut" SortExpression="IsLockedOut" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" SortExpression="LastLoginDate" />
            <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="LastPasswordChangedDate" SortExpression="LastPasswordChangedDate" />
            <asp:BoundField DataField="LastLockoutDate" HeaderText="LastLockoutDate" SortExpression="LastLockoutDate" />
            <asp:BoundField DataField="FailedPasswordAttemptCount" HeaderText="FailedPasswordAttemptCount" SortExpression="FailedPasswordAttemptCount" />
            <asp:BoundField DataField="FailedPasswordAttemptWindowStart" HeaderText="FailedPasswordAttemptWindowStart" SortExpression="FailedPasswordAttemptWindowStart" />
            <asp:BoundField DataField="FailedPasswordAnswerAttemptCount" HeaderText="FailedPasswordAnswerAttemptCount" SortExpression="FailedPasswordAnswerAttemptCount" />
            <asp:BoundField DataField="FailedPasswordAnswerAttemptWindowStart" HeaderText="FailedPasswordAnswerAttemptWindowStart" SortExpression="FailedPasswordAnswerAttemptWindowStart" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" SortExpression="ApplicationId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" SortExpression="MobileAlias" />
            <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous" />
            <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [vw_aspnet_MembershipUsers]"></asp:SqlDataSource>
</asp:Content>

