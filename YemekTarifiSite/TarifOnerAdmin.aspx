<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="TarifOnerAdmin.aspx.cs" Inherits="TarifOnerAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
        .auto-style11 {
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
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <asp:Panel ID="Panel1" runat="server" CssClass="font">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn" OnClick="Button1_Click"   />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" CssClass="btn" OnClick="Button2_Click"   />
                </td>
                <td class="font">ONAYLANAN TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
         <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("tarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="TarifOnerAdminDetay.aspx?tarifID=<%# Eval("tarifID")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/9042800_page_edit_icon.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>  
    <br />
     <asp:Panel ID="Panel3" runat="server" CssClass="font">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" CssClass="btn" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" CssClass="btn" OnClick="Button4_Click"  />
                </td>
                <td class="font">ONAY BEKLEYEN TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
         <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("tarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="TarifOnerAdminDetay.aspx?tarifID=<%# Eval("tarifID")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/9042800_page_edit_icon.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>  
</asp:Content>

