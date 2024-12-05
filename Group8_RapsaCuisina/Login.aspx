<%@ Page Title="Login" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" Inherits="Group8_RapsaCuisina.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <h2>Login</h2>
        <asp:Label ID="Label1" runat="server" Text="Username: " />
        <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="form-control" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: " />
        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" />
        <br />
        <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="LoginButton_Click" />
    </div>
</asp:Content>
