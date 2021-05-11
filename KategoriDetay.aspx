<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style9 {
            width: 103%;
        }
        .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style5 {
            font-size: large;
            color: #660066;
        }
        .auto-style7 {
            background-color: #CCCCCC;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style8 {
            height: 27px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="389px">
    <ItemTemplate>
        <table class="auto-style9">
            <tr>
                <td class="auto-style6"><strong><a href= "TatliDetay.aspx?Tatliid= <%#Eval("Tatliid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("TatliAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("TatliMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tarif:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("TatliTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text='<%# Eval("TatliTarih") %>'></asp:Label>
                        &nbsp;-&nbsp; <em><strong>Puan:</strong></em> <strong><em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("TatliPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: double; border-bottom-width: thick; border-bottom-color: #FFFF00;"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

