<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 45px;
        }

        .auto-style4 {
            text-align: right;
        }

        .btn {
            background-color: #ffa502;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            height: 35px;
            width: 35px;
        }
         .font {
            background-color: #CCFFCC;
            font-family: cursive;
        }

        .auto-style5 {
            background-color: #CCFFCC;
            font-family: cursive;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
        }

        .auto-style7 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="font">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn" OnClick="Button1_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" CssClass="btn" OnClick="Button2_Click"  />
                </td>
                <td class="font">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </td>
                       
                        <td class="auto-style4">
                           <a href="GununYemegiAdminEdit.aspx?yemekID=<%#Eval("yemekID")%>">
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/9042800_page_edit_icon.png" Width="30px" /></a>
                        </td>
                         <td class="auto-style4">
                           <a href="GununYemegiDetayAdmin.aspx?yemekID=<%#Eval("yemekID")%>">
                               <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
       
    </asp:Panel>
</asp:Content>

