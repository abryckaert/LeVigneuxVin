<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true" CodeFile="DefaultUser.aspx.cs" Inherits="DefaultUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="padding-top:2%; padding-left:2%;">Top vines 2023 :</h2>
        <a href="AddVine.aspx" style="position:fixed;width:250px;height:50px;bottom:40px;right:40px;background-color:#a92307;color:#FFF;border-radius:50px;text-align:center; box-shadow: 2px 2px 3px #999;">
        <i class="fa fa-plus my-float" style="margin-top:22px; font-size:2em;">Add a new vine</i>
        </a>
        <table style="padding-left:5%; margin-top:-3%; width:70%;">
            <tr>
                <td style="text-align:center;">
                    <asp:DataList ID="ImageTop123" runat="server" AutoGenerateColumns="False">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td>
                    <asp:DataList ID="DataList123" runat="server" DataKeyField="name" DataSourceID="SqlDataSource1">
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
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
        <h2>Our selection :</h2>
        <table>
            <tr>
                <td style="width:33%; vertical-align: top;">
                    <table>
                        <tr>
                            <td style="vertical-align: top;">
                                <asp:DataList ID="Image4" runat="server" AutoGenerateColumns="False"
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:Image ID="Image4" runat="server" Height="250px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                <asp:DataList ID="DataList4" runat="server" DataKeyField="name"
                                    DataSourceID="SqlDataSource2" RepeatDirection="Horizontal">
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
                                        <asp:Label ID="descriptionLabel" runat="server"
                                            Text='<%# Eval("description") %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM vine 
WHERE rank = 4;"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:33%; vertical-align: top;">
                    <table>
                        <tr>
                            <td style="vertical-align: top;">
                                <asp:DataList ID="Image5" runat="server" AutoGenerateColumns="False"
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:Image ID="Image5" runat="server" Height="250px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                <asp:DataList ID="DataList5" runat="server" DataKeyField="name"
                                    DataSourceID="SqlDataSource3" RepeatDirection="Horizontal">
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
                                        <asp:Label ID="descriptionLabel" runat="server"
                                            Text='<%# Eval("description") %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM vine 
WHERE rank = 5;"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:33%; vertical-align: top;">
                    <table>
                        <tr>
                            <td style="vertical-align: top;">
                                <asp:DataList ID="Image6" runat="server" AutoGenerateColumns="False"
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:Image ID="Image6" runat="server" Height="250px" ImageUrl='<%# "data:Image/png;base64,"
                                            + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                <asp:DataList ID="DataList7" runat="server" DataKeyField="name"
                                    DataSourceID="SqlDataSource4" RepeatDirection="Horizontal">
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
                                        <asp:Label ID="descriptionLabel" runat="server"
                                            Text='<%# Eval("description") %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM vine 
WHERE rank = 6;"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 3 * FROM vine 
ORDER BY rank;">

</asp:Content>

