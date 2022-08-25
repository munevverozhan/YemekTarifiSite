<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="AdminMesajlar.aspx.cs" Inherits="AdminMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
          
        .auto-style4 {
            text-align: left;
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

        .auto-style6 {
            height: 27px;
        }

        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel1" runat="server" CssClass="font">
        <table class="auto-style2">
            <tr>
                <td >
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Bold="True" Text="+" OnClick="Button1_Click"  />
                </td>
                <td >
                    <asp:Button ID="Button2" runat="server" CssClass="btn" Font-Bold="True"  Text="-" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style8">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("mesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style9" >
                      
                           <a href="AdminMesajlarDetay.aspx?mesajID=<%#Eval("mesajID")%>"> <asp:Image ID="Image3" runat="server" ImageUrl="~/Iconlar/4544845_list_business_shop_delivery_comerce_icon.png" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

