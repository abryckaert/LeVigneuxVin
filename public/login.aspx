<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-left:35%; padding-top:1%">
    <asp:Login ID="Login1" runat="server" Height="147px" CreateUserText="Create an account" CreateUserUrl="createAccount.aspx" DestinationPageUrl="~/admin/adminComments.aspx">
    </asp:Login>
    <a href="changePassword.aspx">Forgot password ?</a>
    </div>
    <br />
</asp:Content>

