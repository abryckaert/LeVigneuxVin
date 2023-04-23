<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" DestinationPageUrl="~/vigneron/AddVine.aspx" Height="147px">
    </asp:Login>
    <a href="changePassword.aspx">Forgot password ?</a>
</asp:Content>

