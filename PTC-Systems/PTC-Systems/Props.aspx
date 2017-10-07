<%@ Page Title="" Language="C#" MasterPageFile="~/PageNav.master" AutoEventWireup="true" CodeBehind="Props.aspx.cs" Inherits="PTC_Systems.Props" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftcolumn" runat="server">

    <div class="row">
        <div class="col-md-6">
            <br /> <span style="text-decoration: underline"><strong>Property Information</strong></span><br /><br />
        </div>
        <div class="col-md-2">
            <button class="btn btn-link">Edit Property Details</button><br /><br />
        </div>
    </div>
       
    <div class="containter">
        <div class="spacing">
            <div class="row">
                <div class="col-md-2">
                    <asp:Image ID="Image1" runat="server" Height="121px" Width="176px" />
                </div>
                <div class="col-md-4">
                    <strong>
                        <asp:Label ID="ptfirstname" runat="server"></asp:Label></strong>&nbsp;<strong><asp:Label ID="ptlastname" runat="server"></asp:Label></strong><br />
                    <strong>Email </strong>
                    <asp:Label ID="ptemail" runat="server" Font-Size="Small"></asp:Label><br />
                    <strong>Office Phone </strong>
                    <asp:Label ID="ptbusphone" runat="server" Font-Size="Small"></asp:Label><br />
                    <strong>Celluar Phone </strong>
                    <asp:Label ID="ptcellphone" runat="server" Font-Size="Small"></asp:Label><br />
                    <strong>Fax Number </strong>
                    <asp:Label ID="ptfaxnumber" runat="server" Font-Size="Small"></asp:Label><br />
                </div>
                <div class="col-md-4">
                    <strong>
                        <asp:Label ID="ptclientname" runat="server"></asp:Label></strong><br />
                    <asp:Label ID="ptpropcode" runat="server"></asp:Label><br />
                    <asp:Label ID="ptactivestatus" runat="server"></asp:Label> <asp:Label ID="ptactivedate" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <br>
                    <strong>
                        <asp:Label ID="ptcounty" runat="server"></asp:Label>
                        County</strong>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <strong>Address</strong><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="ptaddressline1" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="ptaddresline2" runat="server"></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="ptcity" runat="server"></asp:Label>
                    <asp:Label ID="ptstate" runat="server"></asp:Label>
                    <asp:Label ID="ptzip" runat="server"></asp:Label><br /><br />
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <strong>Year Built </strong><asp:Label ID="ptyearbuilt" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <strong>Num of Units </strong><asp:Label ID="ptunits" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <strong>Gross Building Area </strong><asp:Label ID="ptgba" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <strong>Net Lease Area </strong><asp:Label ID="ptnla" runat="server"></asp:Label>
                </div>
            </div>

            <asp:HiddenField ID="hfpropid" runat="server"/>
        </div>
    </div>
              
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="rightcolumn" runat="server">
</asp:Content>
