<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

         .auto-style1 {
             width: 100%;
         }
         .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style24 {
            text-align: right;
        }
        .auto-style25 {
            height: 22px;
            text-align: right;
        }
        .auto-style26 {
            text-align: left;
            height: 22px;
        }
        .auto-style27 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            background-color: #FFCC00;
        }
        .auto-style28 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24" style="font-family: 'Times New Roman', Times, serif">Tarif Adı :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" Font-Names="Times New Roman" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" style="font-family: 'Times New Roman', Times, serif">Tarif Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px" Font-Names="Times New Roman" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="font-family: 'Times New Roman', Times, serif">Yapılış:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Height="120px" TextMode="MultiLine" Width="200px" Font-Names="Times New Roman" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Tarif Resim:</td>
                <td class="auto-style9"><strong>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style28" Width="204px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style24">Tarif Öneren:</td>
                <td class="auto-style9"><strong>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style28" Height="20px" Width="197px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style25">Öneren Mail:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style28" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Kategori:</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style28" Height="30px" Width="207px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style27" Font-Names="Times New Roman" OnClick="Button1_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </strong>
</asp:Content>

