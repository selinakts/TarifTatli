<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="KategoriAdminDetay.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: medium;
            background-color: #FFCC00;
        }
        .auto-style26 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-family: 'times New Roman', Times, serif"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Font-Names="Times New Roman"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-family: 'times New Roman', Times, serif"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Font-Names="Times New Roman"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26" style="font-family: 'times New Roman', Times, serif"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Font-Names="Times New Roman" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Font-Names="Times New Roman" OnClick="Button1_Click" Text="Güncelle" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

