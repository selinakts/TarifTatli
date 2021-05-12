<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-size: large;
            color: #660066;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5">
        <strong><em style="font-family: 'Times New Roman', Times, serif">HAKKIMIZDA</em></strong></p>
    <div class="auto-style6">
    <asp:DataList ID="DataList2" runat="server" Width="398px" CssClass="cssDisplay" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' Font-Names="Times New Roman"></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <p class="auto-style5">
        &nbsp;</p>
</asp:Content>

