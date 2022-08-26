<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .txtFont {
            font-family: 'Comic Sans MS';
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="446px" CssClass="txtFont">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:Image ID="Image1" runat="server" Height="282px" ImageUrl="~/Pictures/724-1024x683.jpg" Width="449px" />
</asp:Content>

