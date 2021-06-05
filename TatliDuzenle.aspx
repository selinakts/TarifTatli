<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="TatliDuzenle.aspx.cs" Inherits="TatliDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 23px;
        }
        .auto-style26 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style27 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        .auto-style28 {
            height: 23px;
            margin-left: 80px;
        }
        .auto-style29 {
            height: 23px;
            text-align: right;
            margin-left: 80px;
        }
        .auto-style30 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-size: medium;
            background-color: #FFCC00;
        }
    .auto-style31 {
        border: 2px solid #456879;
        border-radius: 10px;
        font-size: medium;
        background-color: #8DB02B;
    }
        .auto-style32 {
            height: 23px;
            text-align: left;
            margin-left: 80px;
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
            <td style="font-family: 'times New Roman', Times, serif"><strong>Tatlı Adı:</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style27" Font-Names="Times New Roman" Width="300px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif"><strong>Malzemeler:</strong></td>
            <td class="auto-style26"><strong>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style27" Font-Names="Times New Roman" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif"><strong>Tarif:</strong></td>
            <td class="auto-style26"><strong>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style27" Font-Names="Times New Roman" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif"><strong>Kategori:</strong></td>
            <td class="auto-style28"><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Font-Names="Times New Roman" Width="300px">
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif"><strong>Resim:</strong></td>
            <td class="auto-style32">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="299px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif">&nbsp;</td>
            <td class="auto-style29"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style30" Font-Names="Times New Roman" Text="Güncelle" Width="135px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style25" style="font-family: 'times New Roman', Times, serif">&nbsp;</td>
            <td class="auto-style29">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Font-Names="Times New Roman" OnClick="Button2_Click" Text="Günün Tatlısını Seç" Width="135px" />
            </td>
        </tr>
    </table>
</asp:Content>

