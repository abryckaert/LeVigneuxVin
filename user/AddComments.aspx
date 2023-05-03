<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="AddComments.aspx.cs" Inherits="AddComments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add comment :</h2>
    <table style="width: 44%; height: 166px">
        <tr>
        <td style="width: 287px; height: 26px; text-align: right">Vine name : </td>
        <td style="height: 26px; width: 483px">

            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [vine]"></asp:SqlDataSource>

        </td>
    </tr>
        <tr>
        <td style="width: 287px; height: 26px; text-align: right">Title</td>
        <td style="height: 26px; width: 483px">

            <asp:TextBox ID="title" runat="server"></asp:TextBox>

        </td>
    </tr>
    <tr>
        <td style="width: 287px; height: 26px; text-align: right">Comments : </td>
        <td style="height: 26px; width: 483px">
            <asp:TextBox ID="description" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right">Rate :</td>
        <td style="width: 483px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="text-align: left">
                <asp:ListItem Selected="True" Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem Value="4"></asp:ListItem>
                <asp:ListItem Value="5"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 33px;"></td>
        <td style="width: 483px; height: 33px;">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td style="width: 287px; text-align: right; height: 33px;">&nbsp;</td>
        <td style="width: 483px; height: 33px;">
            <asp:Label ID="submited" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

