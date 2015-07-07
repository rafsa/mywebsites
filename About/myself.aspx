<%@ Page Title="About myself" Language="C#" MasterPageFile="~/MasterPage/frotend.master" AutoEventWireup="true" CodeFile="myself.aspx.cs" Inherits="MasterPage_myself" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        <br />
        profle page allow you to update and change your profile
    </p>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="LastName" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" Display="Dynamic" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" AssociatedControlID="DateOfBirth" Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Date Of birth required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DateOfBirth" Display="Dynamic" ErrorMessage="Please enter a valid date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" AssociatedControlID="Biography" Text="Biography"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Biography" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" AssociatedControlID="favmusic" Text="Favorite Music"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="favmusic" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" AssociatedControlID="favmovie" Text="Favorite Movie"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="favmovie" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click"  Text="Save Profile" />
                <asp:Label ID="Label7" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

