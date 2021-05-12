<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="İletisim.aspx.cs" Inherits="İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        font-size: large;
        color: #660066;
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            background-color: #FFCC00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6" colspan="2"><strong><em style="font-family: 'times New Roman', Times, serif">MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-family: 'times New Roman', Times, serif"><strong>Ad Soyad:&nbsp;</strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-family: 'times New Roman', Times, serif"><strong>Mail:</strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-family: 'times New Roman', Times, serif"><strong>Konu:</strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtKonu" runat="server" OnTextChanged="TextBox3_TextChanged" CssClass="tb5" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="font-family: 'Times New Roman', Times, serif"><strong>Mesaj:</strong></td>
        <td style="font-family: 'Times New Roman', Times, serif">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="Gönder" Width="230px" OnClick="Button1_Click" Font-Names="Times New Roman" />
            </strong></td>
    </tr>
</table>
</asp:Content>

