<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Yemek.aspx.cs" Inherits="Yemek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="font">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" CssClass="btn" OnClick="Button2_Click" />
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
                            <a href="Yemek.aspx?yemekID=<%#Eval("yemekID")%>&islem=sil"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style4">
                           <a href="AdminYemekDuzenle.aspx?yemekID=<%#Eval("yemekID")%>">
                               <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" /></a>
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
                    <asp:Button ID="Button4" runat="server" Text="-" CssClass="btn" OnClick="Button4_Click" />
                </td>
                <td class="font">YEMEK EKLEME</td>
            </tr>
        </table>


    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Yemek Adı :</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtAd" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Malzeme :</td>
            <td>
                <asp:TextBox ID="txtMalzeme" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="150px" Width="278px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Tarif :</td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="198px" Width="274px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="font">Resim :</td>
            <td>
                <asp:FileUpload ID="txtResim" runat="server" CssClass="textbox" />
            </td>
        </tr>
        <tr>
            <td class="font">Kategori :</td>
            <td>
                <asp:DropDownList ID="txtKategori" runat="server" CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" Text="EKLE" CssClass="button" OnClick="btnEkle_Click" />
            </td>
        </tr>
    </table>

    </asp:Panel>
</asp:Content>

