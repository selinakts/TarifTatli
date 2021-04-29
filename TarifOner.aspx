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
    }
        .auto-style8 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Tarif Ad:</em></strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Malzemeler:</em></strong></td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="85px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Tarif:</em></strong></td>
        <td>
            <asp:TextBox ID="TxtTarif" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5" OnTextChanged="TxtTarif_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Resim:</em></strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Tarif Öneren:</em></strong></td>
        <td>
            <asp:TextBox ID="TxtTarfifOner" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><em>Mail:</em></strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            <strong>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFD800" Text="Tarifi Öner" Width="150px" Height="30px" OnClick="BtnTarifOner_Click" CssClass="auto-style8" />
            </strong>
        </td>
    </tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

