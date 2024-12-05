<%@ Page Title="Home" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Group8_RapsaCuisina._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">
        <!-- Add an image -->
       <img src="images/logo_new.gif" alt="Description of Image" class="img-fluid" />
        <!-- Add a button -->
        <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="button1" OnClick="Button1_Click" />
         <br />
        <asp:Button ID="Button2" runat="server" Text="Sign Up" CssClass="button2" OnClick="Button2_Click" />
    </div>
</asp:Content>




