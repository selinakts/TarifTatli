<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        text-align: right;
        color: #660066;
        width: 128px;
    }
    .auto-style6 {
        width: 128px;
    }
    .auto-style7 {
        text-align: right;
            background-color: #CCCCCC;
        }
        .auto-style8 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style9 {
            width: 119px;
            text-align: center;
            font-style: italic;
            font-weight: bold;
            color: #0000FF;
            background-color: #CCCCCC;
        }
        .auto-style10 {
            text-align: right;
            color: #0000FF;
            width: 119px;
        }
        .auto-style11 {
            text-align: center;
            font-style: italic;
            font-weight: bold;
            color: #0000FF;
            background-color: #CCCCCC;
        }
        .auto-style12 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style11" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'Times New Roman', Times, serif"><strong><em>Tarif Ad:</em></strong></td>
        <td style="font-family: 'Times New Roman', Times, serif">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="267px" CssClass="auto-style12" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'Times New Roman', Times, serif"><strong><em>Malzemeler:</em></strong></td>
        <td style="font-family: 'Times New Roman', Times, serif">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="85px" TextMode="MultiLine" Width="269px" CssClass="auto-style12" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'times New Roman', Times, serif"><strong><em>Tarif:</em></strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtTarif" runat="server" Height="150px" TextMode="MultiLine" Width="269px" CssClass="auto-style12" OnTextChanged="TxtTarif_TextChanged" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'times New Roman', Times, serif"><strong><em>Resim:</em></strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="271px" CssClass="auto-style12" Font-Names="Times New Roman" />
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'times New Roman', Times, serif"><strong><em>Tarif Öneren:</em></strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtTarfifOner" runat="server" Width="266px" CssClass="auto-style12" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" style="font-family: 'times New Roman', Times, serif"><strong><em>Mail:</em></strong></td>
        <td style="font-family: 'times New Roman', Times, serif">
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="265px" CssClass="auto-style12" Font-Names="Times New Roman"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style7">
            <strong>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFD800" Text="Tarifi Öner" Width="158px" Height="30px" OnClick="BtnTarifOner_Click" CssClass="auto-style8" Font-Names="Times New Roman" />
            </strong>
        </td>
    </tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

