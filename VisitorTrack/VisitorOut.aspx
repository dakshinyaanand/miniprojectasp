<%@ Page Title="" Language="C#" MasterPageFile="~/Logo.Master" AutoEventWireup="true" CodeBehind="VisitorOut.aspx.cs" Inherits="VisitorTrack.VisitorOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>Visitors In</td>
        <td>
            <asp:TextBox ID="txtvisitor" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnid" runat="server" OnClick="btnid_Click" Text="Search by ID" />
        </td>
        <td>
            <asp:Button ID="btnname" runat="server" Text="Search by name" OnClick="btnname_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Sign out">
               <ItemTemplate  >
                   <asp:Button ID="b2" runat="server" Text="Click to sign out>>>" OnClick="b2_Click" />

               </ItemTemplate>
           </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VisitorConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Type of ID] AS Type_of_ID, [ID Num] AS ID_Num FROM [visitorinfo] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Signed in" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
