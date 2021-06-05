<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="GununTatlisi.aspx.cs" Inherits="GununTatlisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            color: #660066;
            height: 23px;
        }
        .auto-style6 {
            width: 175px;
            text-align: left;
            color: #000000;
        }
        .auto-style7 {
            text-align: right;
            color: #000000;
        }
        .auto-style8 {
            color: #000000;
        }
        .auto-style9 {
            margin-right: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style9" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 40px; text-align: center;"><em>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" style="font-size: x-large; font-weight: 700; " Text='<%# Eval("TatliAd") %>' Font-Names="Times New Roman"></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 40px">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("TatliMalzeme ") %>' CssClass="auto-style8" Font-Names="Times New Roman"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 80px">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("TatliTarif") %>' CssClass="auto-style8" Font-Names="Times New Roman"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: center; margin-left: 80px">
                        <asp:Image ID="Image1" runat="server" Height="185px" style="text-align: center" Width="376px" BorderColor="#660066" ForeColor="White" ImageUrl='<%# Eval("TatliResim") %>' ImageAlign="Middle" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: left; margin-left: 80px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: left; margin-left: 80px; font-family: 'times New Roman', Times, serif;">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style6">Puan:<asp:Label ID="Label6" runat="server" Text='<%# Eval("TatliPuan") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td class="auto-style7">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="margin-left: 80px; font-family: 'times New Roman', Times, serif;">Eklenme Tarih:<asp:Label ID="Label7" runat="server" Text='<%# Eval("TatliTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 80px">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

