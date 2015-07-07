<%@ Page Title="Register to my personal website" Language="C#" MasterPageFile="~/MasterPage/frotend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Login to my personal website</h1>
    <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserText="sign up for a new account here" CreateUserUrl="~/signup.aspx"  BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="300px" Width="250px" >
                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            &nbsp;user already logged in&nbsp;
        </LoggedInTemplate>
        </asp:LoginView>
</asp:Content>

