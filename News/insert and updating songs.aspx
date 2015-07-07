<%@ Page Title="insert and update songs" Language="C#" MasterPageFile="~/MasterPage/frotend.master" AutoEventWireup="true" CodeFile="insert and updating songs.aspx.cs" Inherits="MasterPage_All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            <asp:BoundField DataField="createdate" HeaderText="createdate" SortExpression="createdate" />
            <asp:BoundField DataField="favsong" HeaderText="favsong" SortExpression="favsong" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:Button ID="Button1" runat="server" OnClientClick="window.open('songs.aspx')" Text="go back to the song page" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Website7ConnectionString1 %>" DeleteCommand="DELETE FROM [song] WHERE [id] = @id" InsertCommand="INSERT INTO [song] ([id], [name], [title], [summary], [createdate], [favsong]) VALUES (@id, @name, @title, @summary, @createdate, @favsong)" SelectCommand="SELECT * FROM [song] WHERE ([id] = @id)" UpdateCommand="UPDATE [song] SET [name] = @name, [title] = @title, [summary] = @summary, [createdate] = @createdate, [favsong] = @favsong WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter DbType="Date" Name="createdate" />
            <asp:Parameter Name="favsong" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter DbType="Date" Name="createdate" />
            <asp:Parameter Name="favsong" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

