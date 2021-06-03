<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            width: 100%;
        }
        .auto-style43 {
        width: 38px;
        background-color: #8DB02B;
            height: 34px;
        }
        .auto-style31 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style28 {
            width: 40px;
            text-align: right;
        background-color: #8DB02B;
            height: 34px;
        }
        .auto-style42 {
        text-align: center;
        font-size: large;
        background-color: #8DB02B;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="35px">
        <table class="auto-style24">
            <tr>
                <td class="auto-style43"><strong>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button8_Click" />
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button9_Click" />
                    </strong></td>
                <td class="auto-style42"><strong>ONAYLANAN YORUMLAR</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <EditItemStyle Font-Names="Times New Roman" />
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>' Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style40">
                        </td>
                        <td class="auto-style37">
                             <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server"  Height="35px">
        <table class="auto-style24">
            <tr>
                <td class="auto-style43"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style42"><strong>ONAYLANMAYAN YORUMLAR</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="401px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <EditItemStyle Font-Names="Times New Roman" />
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style38">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>' Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style40">
                        </td>
                        <td class="auto-style37">
                             <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
        </asp:Content>

