<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddVine.aspx.cs" Inherits="AddVine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 44%; height: 166px">
    <tr>
        <td style="width: 287px; height: 26px; text-align: right">Name : </td>
        <td style="height: 26px; width: 483px">
            <asp:TextBox ID="vineName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right">Type :</td>
        <td style="width: 483px">
            <asp:TextBox ID="vineType" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right">Domaine :</td>
        <td style="width: 483px">
            <asp:TextBox ID="vineDomaine" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; height: 26px; text-align: right">Description : </td>
        <td style="height: 26px; width: 483px">
            <asp:TextBox ID="vineDescription" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 40px">Price :</td>
        <td style="width: 483px; height: 40px">
            <asp:TextBox ID="vinePrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 40px">&nbsp;</td>
        <td style="width: 483px; height: 40px">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 40px">&nbsp;</td>
        <td style="width: 483px; height: 40px">
            <asp:Button ID="Button1" runat="server" style="text-align: right" Text="Submit Vine" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 40px">&nbsp;</td>
        <td style="width: 483px; height: 40px">
            <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vine]"></asp:SqlDataSource>
<asp:Label ID="submited" runat="server"></asp:Label>

</asp:Content>

