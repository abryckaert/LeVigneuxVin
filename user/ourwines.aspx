<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="ourwines.aspx.cs" Inherits="ourwines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Our wines :</h2> 
    <table style="width:70%;">
        <tr>
            <td style="text-align:center; vertical-align: top;">                
                <asp:DataList ID="ImageMywine" runat="server" AutoGenerateColumns="False">
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

