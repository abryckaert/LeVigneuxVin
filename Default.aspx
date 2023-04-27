<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
=            <h2>Top vines 2023 :</h2>
            <table>
                <tr>
                    <td>
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Size" HeaderText="Size (bytes)" />
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                                            ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>
                        <h3><asp:Label ID="rankLabel" runat="server" Text='<%# Eval("rank") %>' /></h3>
                        <h3><asp:Label ID="nameLabel" runat="server" CellPadding="2" Text='<%# Eval("name") %>' /></h3>
                        <br />
                        <asp:Label ID="typeLabel" runat="server" CellPadding="2" Text='<%# Eval("type") %>' />
                        <br />
                        <asp:Label ID="domaineLabel" runat="server" CellPadding="2" Text='<%# Eval("domaine") %>' />
                        <br />
                        description:
                        <asp:Label ID="descriptionLabel" runat="server" CellPadding="2" Text='<%# Eval("description") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" CellPadding="2" Text='<%# Eval("price") %>' />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 3  * FROM vine 
ORDER BY &quot;rank&quot; DESC;"></asp:SqlDataSource>




</asp:Content>

