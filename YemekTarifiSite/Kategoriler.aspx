<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
        .auto-style3 {
            background-color: #CCFFCC;
            font-family: cursive;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            text-align: right;
        }

        .auto-style6 {
            font-size: large;
        }

        .auto-style7 {
            font-size: x-large;
        }

        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            margin-left: 40px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Bold="True"  OnClick="Button1_Click" Text="+"/>
                </td>
                <td  class="auto-style8">
                   <asp:Button ID="Button2" runat="server" CssClass="btn" Font-Bold="True"  OnClick="Button2_Click" Text="-"  />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("kategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
<%--                            AYNI SAYFA İÇİNE YÖNLENDİRME YAPTIĞIMIZ İÇİN &islem PARAMETRESİNİ EKLEDİK...--%>
                           <a href="Kategoriler.aspx?kategoriID=<%#Eval("kategoriID")%>&islem=sil" ><asp:Image ID="Image1" runat="server"  Height="30px" Width="30px" ImageUrl="~/Iconlar/delete.png"  /></a>
                            
                        </td>
                        <td class="auto-style5">
                           <a href="KategoriDuzenle.aspx?kategoriID=<%#Eval("kategoriID")%>"> <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Iconlar/update.png" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel style="margin-top: 15px;" ID="Panel3" runat="server" CssClass="auto-style3">
        <table class="auto-style2">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" CssClass="btn" Font-Bold="True" Text="+"  OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="btn" Font-Bold="True"  Text="-"  OnClick="Button4_Click" />
                </td>
                <td>KATEGORİ EKLEME</td>
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
                <td class="txt">Kategori Ad:&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="txt">Kategori Icon : </td>
                <td class="auto-style9">


                    <asp:FileUpload ID="kategoriIcon" runat="server" CssClass="textbox" />


                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnEkle" runat="server" Text="EKLE" CssClass="button" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>

</asp:Content>

