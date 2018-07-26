<%@ Page Title="" Language="C#" MasterPageFile="~/Logo.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="VisitorTrack.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 95px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="btnvisitorin" runat="server" BackColor="White" BorderColor="White" BorderWidth="0px" Font-Bold="true" ForeColor="#003399" Height="40px" OnClick="btnvisitorin_Click" Text="Visitor In " Width="200px" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="btnVisitorOut" runat="server" BackColor="White" BorderColor="White" BorderWidth="0px" Font-Bold="true" ForeColor="#003399" Height="40px" Text="Visitor Out" Width="200px" OnClick="btnVisitorOut_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
