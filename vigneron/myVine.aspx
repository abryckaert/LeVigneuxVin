<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVigneron.master" AutoEventWireup="true" CodeFile="myVine.aspx.cs" Inherits="myVine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>My vines :</h2>
    <a href="modifyVines.aspx" style="position:fixed;width:250px;height:50px;bottom:40px;right:40px;background-color:#a92307;color:#FFF;border-radius:50px;text-align:center; box-shadow: 2px 2px 3px #999;">
        <i class="fa fa-plus my-float" style="margin-top:22px; font-size:2em;">Modify my vines</i>
    </a>
    <table>
        <tr>
            <td style="text-align:center;">                
                <asp:DataList ID="ImageMyVine" runat="server" AutoGenerateColumns="False">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                        </ItemTemplate>
                    </asp:DataList>
            </td>
            <td>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        type:
                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        <br />
                        domaine:
                        <asp:Label ID="domaineLabel" runat="server" Text='<%# Eval("domaine") %>' />
                        <br />
                        description:
                        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        rank:
                        <asp:Label ID="rankLabel" runat="server" Text='<%# Eval("rank") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>

                

            </td>
        </tr>
    </table>
</asp:Content>

