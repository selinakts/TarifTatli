<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            margin-left: 40px;
        }
        .auto-style26 {
            margin-left: 80px;
        }
        .auto-style28 {
            height: 26px;
        }
        .auto-style29 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style30 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style31 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        .auto-style32 {
            color: #000000;
            text-align: justify;
        }
        .auto-style33 {
            height: 23px;
        }
        .auto-style34 {
            color: #000000;
            text-align: justify;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" class="auto-style24">
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YORUM DETAY FORMU</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Mail:</strong></td>
            <td class="auto-style25">
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>İçerik:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="Txticerik" runat="server" CssClass="auto-style30" Height="152px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Tatlı:</strong></td>
            <td class="auto-style26">
                <asp:TextBox ID="TxtTatli" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26"><strong>
                <asp:Button ID="BtnOnayla" runat="server" BackColor="#FFD800" CssClass="auto-style31" Font-Names="Times New Roman" Height="30px"  Text="Onayla" Width="158px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

