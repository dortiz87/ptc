<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PTC_Systems._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>get username </h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Client Look Up</h2>
            <p dir="ltr">
                Client:
                <asp:DropDownList ID="dd1" runat="server" Height="18px" Width="249px" AppendDataBoundItems="True" AutoPostBack="True" EnableTheming="True">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Text="Search" OnClick="Button1_Click" />
            </p>
            <p>
                &nbsp;</p>
        </div>

        <div class="col-md-4">
            <h2>Upcoming ARB Hearings</h2>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Upcoming Litigation Cases</h2> 
            <br />
            <p>
                List Litigation Cases Here</p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
