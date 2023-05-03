<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVigneron.master" AutoEventWireup="true" CodeFile="myComments.aspx.cs" Inherits="myComments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>My comments:</h2>
    <div style="padding-left:23%">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    <br />
</asp:Content>

