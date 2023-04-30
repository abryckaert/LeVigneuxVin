<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVigneron.master" AutoEventWireup="true" CodeFile="modifyVines.aspx.cs" Inherits="modifyVines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>My vines : </h2>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="name"  AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="domaine" HeaderText="domaine" SortExpression="domaine" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="IdImage" HeaderText="IdImage" SortExpression="IdImage" />
            <asp:BoundField DataField="vigneronName" HeaderText="vigneronName" SortExpression="vigneronName" />
        </Columns>
    </asp:GridView>
    </asp:Content>

