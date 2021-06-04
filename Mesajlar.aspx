<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
            text-align: right;
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
                    <asp:Button ID="Button9" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button9_Click"  />
                    </strong></td>
                <td class="auto-style42" style="font-family: 'Times New Roman', Times, serif"><strong>MESAJLAR</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("MesajGonderen") %>' Font-Names="Times New Roman"></asp:Label>
                        </td>
                        <td class="auto-style44">
                             <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/iconread.jpg" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

