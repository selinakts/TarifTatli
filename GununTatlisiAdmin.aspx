<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="GununTatlisiAdmin.aspx.cs" Inherits="GununTatlisiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            width: 100%;
        }
        .auto-style43 {
        width: 38px;
        background-color: #8DB02B;
    }
        .auto-style31 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style28 {
            width: 40px;
            text-align: right;
        background-color: #8DB02B;
    }
        .auto-style42 {
        text-align: center;
        font-size: large;
        background-color: #8DB02B;
    }
        .auto-style44 {
            text-align: right;
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
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button9_Click"  />
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
                        <td class="auto-style44">
                            <a href="TatliDuzenle.aspx?Tatliid=<%#Eval("tatliid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/iconchose.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>

