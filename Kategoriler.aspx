<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style27 {
            width: 38px;
        background-color: #456879;
    }
        .auto-style28 {
            width: 40px;
            text-align: right;
        background-color: #8DB02B;
    }
        .auto-style31 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style33 {
            width: 38px;
            text-align: right;
        background-color: #456879;
    }
        .auto-style34 {
            text-align: center;
            font-size: large;
        background-color: #456879;
    }
        .auto-style36 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #FFCC00;
        }
    .auto-style37 {
        text-align: right;
        margin-left: 120px;
    }
    .auto-style38 {
        width: 302px;
    }
    .auto-style40 {
        text-align: right;
        width: 32px;
    }
    .auto-style42 {
        text-align: center;
        font-size: large;
        background-color: #8DB02B;
    }
    .auto-style43 {
        width: 38px;
        background-color: #8DB02B;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style43"><strong>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button8_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button9_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style42"><strong style="font-family: 'times New Roman', Times, serif">KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px">
            <EditItemStyle Font-Names="Times New Roman" />
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("KategoriAd") %>' Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style40">
                           <a href="Kategoriler.aspx?kategoriid=<%#Eval("Kategoriid") %> &islem=sil "><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style37">
                            <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top:10px">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style27">
                        <asp:Button ID="Button10" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button10_Click" Text="+" Width="30px" />
                    </td>
                    <td class="auto-style33">
                        <strong>
                        <asp:Button ID="Button11" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button11_Click" Text="-" Width="30px" />
                        </strong>
                    </td>
                    <td class="auto-style34"><strong style="font-family: 'times New Roman', Times, serif">KATEGORİ EKLEME</strong></td>
                </tr>
            </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style24">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong style="font-family: 'Times New Roman', Times, serif">Kategori Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong style="font-family: 'Times New Roman', Times, serif">Kategori İkon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style36" Text="Ekle" Width="75px" Font-Names="Times New Roman" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

