<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        

        .auto-style7 {
            width: 100%;
        }

        .auto-style10 {
            color: #57606f;
        }

        .auto-style11 {
            height: 23px;
        }

        .auto-style12 {
            text-align: right;
        }

        .auto-style14 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
        }

        .header {
            font-family: 'MV Boli';
            color: #FC427B;
            font-size: 23px;
            text-align: center;
            background-color: #f5f6fa;
        }

        .headerFont {
            font-family: 'MV Boli';
            color: #2ed573;
            font-size: 18px;
        }

        .txtFont {
            font-family: 'Comic Sans MS';
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <strong>
       
        <asp:Label ID="Label3" runat="server" CssClass="header" Text="Label"></asp:Label>
        &nbsp;
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>&nbsp;<asp:Label ID="Label5" runat="server" CssClass="headerFont" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;
                            <asp:Label ID="Label8" runat="server" CssClass="txtFont" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                            &nbsp;--<strong>
                            <asp:Label ID="Label7" runat="server" CssClass="txtFont" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                            </strong>&nbsp;&nbsp; 

                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: dotted; border-bottom-color: #000000; border-bottom-width: thick;">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <div class="header">YORUM YAPMA PANELİ </div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style7">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Ad Soyad :&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Mail :</td>
                    <td><strong>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="textbox"></asp:TextBox>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">Yorumunuz : </td>
                    <td>
                        <asp:TextBox ID="txtYorum" runat="server" TextMode="MultiLine" CssClass="auto-style14" Height="69px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnYorumYap" runat="server" BackColor="#FC427B" CssClass="button" OnClick="btnYorumYap_Click" Text="YORUM YAP" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </strong>
</asp:Content>


