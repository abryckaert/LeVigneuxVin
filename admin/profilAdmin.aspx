<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="profilAdmin.aspx.cs" Inherits="profilAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>My infos :</h2>
    <div style="padding-left:5%">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            LastLoginDate:
            <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Eval("LastLoginDate") %>' />
            <br />
            CreateDate:
            <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Eval("CreateDate") %>' />
            <br />
            <br />
        </ItemTemplate>
        </asp:DataList>
        </div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
</asp:Content>

