<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="HakkimizdeAdmin.aspx.cs" Inherits="HakkimizdeAdmin" %>

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
        .auto-style44 {
        margin-left: 80px;
    }
    .auto-style45 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
    .auto-style46 {
        border: 2px solid #456879;
        border-radius: 10px;
        font-weight: bold;
        font-size: medium;
        background-color: #FFCC00;
    }
    .auto-style47 {
        text-align: right;
        margin-left: 80px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="35px">
        <table class="auto-style24">
            <tr>
                <td class="auto-style43"><strong>
                    <asp:Button ID="Button8" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px"  />
                    </strong></td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px"  />
                    </strong></td>
                <td class="auto-style42" style="font-family: 'Times New Roman', Times, serif"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style44"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style45" Font-Italic="True" Height="221px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="389px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style47"><strong>
                    <asp:Button ID="Button10" runat="server" CssClass="auto-style46" Font-Names="Times New Roman" Text="Güncelle" Width="201px" OnClick="Button10_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

