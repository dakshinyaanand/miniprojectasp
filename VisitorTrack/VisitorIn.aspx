<%@ Page Title="" Language="C#" MasterPageFile="~/Logo.Master" AutoEventWireup="true" CodeBehind="VisitorIn.aspx.cs" Inherits="VisitorTrack.VisitorIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: left;
            height: 122px;
        }
        .auto-style13 {
            text-align: right;
            width: 226px;
            height: 40px;
        }
        .auto-style14 {
            height: 40px;
            width: 936px;
        }
        .auto-style18 {
            text-align: left;
            width: 507px;
            height: 122px;
        }
        .auto-style19 {
            text-align: right;
            width: 226px;
            height: 43px;
        }
        .auto-style20 {
            height: 43px;
            width: 936px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13" colspan="2">First Name</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtfname" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="None" ErrorMessage="Enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Last Name</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtlname" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" Display="None" ErrorMessage="Enter the name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Company</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcompany" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcompany" Display="None" ErrorMessage="enter the company name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Visiting</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtVisiting" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtVisiting" Display="None" ErrorMessage="enter the visiting company name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Type of ID</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddlidtype" runat="server" Width="161px">
                    <asp:ListItem>PAN Card</asp:ListItem>
                    <asp:ListItem>Voter ID</asp:ListItem>
                    <asp:ListItem>Driving License</asp:ListItem>
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlidtype" Display="None" ErrorMessage="enter the type of id" ForeColor="Red" InitialValue="select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">ID No</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtidno" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtidno" Display="None" ErrorMessage="Enter the ID number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2">Vehicle No</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtvehicleno" runat="server" Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtvehicleno" Display="None" ErrorMessage="Enter the valid vehicle number" ForeColor="Red" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Contact No</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtphn" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtphn" Display="None" ErrorMessage="Enter the contact number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" Display="None" ErrorMessage="Enter the valid Contact No. " ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">Purpose of Visit</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpurpose" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="None" ErrorMessage="Enter the Purpose of Visit" ForeColor="Red" ControlToValidate="txtpurpose"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" OnClick="btnsave_Click" Text="Save" Width="100px" />
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" CausesValidation="False" Font-Names="Comic Sans MS" Font-Size="Large" Text="Cancel" OnClick="btncancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
