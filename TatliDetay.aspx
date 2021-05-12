<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="TatliDetay.aspx.cs" Inherits="TatliDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-size: x-small;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            background-color: #FFFFFF;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: left;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
        <asp:DataList ID="DataList2" runat="server" Width="395px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: double; border-bottom-color: #FFFF00; border-bottom-width: thick">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            <div class="auto-style8" style="font-family: 'Times New Roman', Times, serif">YORUM YAPMA PANELİ</div>
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="font-family: 'Times New Roman', Times, serif">Ad Soyad:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" Font-Names="Times New Roman"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="font-family: 'Times New Roman', Times, serif">Mail:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px" Font-Names="Times New Roman"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="font-family: 'Times New Roman', Times, serif">Yorum:</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TextBox4" runat="server" Height="120px" TextMode="MultiLine" Width="200px" Font-Names="Times New Roman"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" Font-Names="Times New Roman" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
    </asp:Panel>
        </strong>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

