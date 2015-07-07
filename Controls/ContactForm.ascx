<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<asp:UpdatePanel ID="updatepanel1" runat="server" >
    <ContentTemplate>
<table class="auto-style1" runat="server"  id="FormTable">
    <tr>
        <td colspan="3">Fill out this form to register&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="Errormessage" ErrorMessage="Enter your Name">Enter your name</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="Address" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>city</td>
        <td>
            <asp:TextBox ID="city" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>state</td>
        <td>
            <asp:TextBox ID="state" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Zip</td>
        <td>
            <asp:TextBox ID="zip" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="zip" CssClass="Errormessage" ErrorMessage="Enter your zip address" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>phone</td>
        <td>
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" CssClass="Errormessage" ErrorMessage="Enter your phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" CssClass="Errormessage" ErrorMessage="Enter your email address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>repeat Email</td>
        <td>
            <asp:TextBox ID="repeatemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Email" ControlToValidate="repeatemail" CssClass="Errormessage" ErrorMessage="Email address doesnot match"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="repeatemail"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="sendbutton" runat="server" Text="send" OnClick="sendbutton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        <asp:Label ID="Message" runat="server" Text="congratulation, you have been registered to the website" Visible="false" />
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updatepanel1">
    <ProgressTemplate>
        <div class="pleasewait"> </div>


    </ProgressTemplate>
</asp:UpdateProgress>
