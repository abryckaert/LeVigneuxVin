<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ourVines.aspx.cs" Inherits="ourVines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Our vines :</h2> 
    <table style="width:70%;">
        <tr>
            <td style="text-align:center; vertical-align: top;">                
                <asp:DataList ID="ImageMyVine" runat="server" AutoGenerateColumns="False">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                            <br />
                <br />
                <br />
                
                        </ItemTemplate>
                    </asp:DataList>
                
            </td>
            <td style="vertical-align: top;">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <h3 style="margin-bottom:-1.2%;">
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            </h3>
                            <br />
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                            <br />
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />
                            <br />
                            <asp:Label ID="domaineLabel" runat="server" Text='<%# Eval("domaine") %>' />
                            <br />
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        <br />
                        <br />
                                                <br />

                    </ItemTemplate>
                </asp:DataList>

                

            </td>
        </tr>
    </table>
</asp:Content>

