<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" Height="147px" CreateUserText="Create an account" CreateUserUrl="public\createAccount.aspx" DestinationPageUrl="~/admin/adminUsers.aspx">
    </asp:Login>
    <a href="changePassword.aspx">Forgot password ?</a>
</asp:Content>

