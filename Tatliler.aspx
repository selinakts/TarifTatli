<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Tatliler.aspx.cs" Inherits="Tatliler" %>


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
            background-color: #FFCC00;
            font-size: medium;
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
        .auto-style44 {
            height: 23px;
        }
        .auto-style45 {
            text-align: right;
        }
        .auto-style46 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        .auto-style47 {
            font-size: large;
            height: 43px;
            color: #000000;
        }
        .auto-style48 {
            color: #000000;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style43"><strong>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button8_Click" />
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button9_Click" />
                    </strong></td>
                <td class="auto-style42"><strong style="font-family: 'times New Roman', Times, serif">TATLI LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style47" Text='<%# Eval("TatliAd") %>' Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style40">
                           <a href="Tatliler.aspx?kategoriid=<%#Eval("Tatliid") %> &islem=sil "><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style37">
                            <a href="TatliDuzenle.aspx?Tatliid=<%#Eval("tatliid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" /></a>
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
                        <asp:Button ID="Button10" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button10_Click" />
                    </td>
                    <td class="auto-style33">
                        <strong>
                        <asp:Button ID="Button11" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button11_Click" />
                        </strong>
                    </td>
                    <td class="auto-style34"><strong style="font-family: 'times New Roman', Times, serif">TATLI EKLEME</strong></td>
                </tr>
            </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style48"><span class="auto-style48"><strong>Tatlı</strong></span> <span class="auto-style48"><strong style="font-family: 'Times New Roman', Times, serif">&nbsp;Ad:</strong></span></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Font-Names="Times New Roman" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48"><strong>Malzemeler</strong><strong style="font-family: 'Times New Roman', Times, serif">:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Font-Names="Times New Roman" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48"><strong>Tarif</strong>:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Font-Names="Times New Roman" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48"><strong>Kategorisi</strong>:</td>
                <td><strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style46" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="300px">
                    </asp:DropDownList>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style45"><strong>
                    <asp:Button ID="BtnEkle0" runat="server" CssClass="auto-style36" Font-Names="Times New Roman" OnClick="BtnEkle0_Click" Text="Ekle" Width="120px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style45">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

