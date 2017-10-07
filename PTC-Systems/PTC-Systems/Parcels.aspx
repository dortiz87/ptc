<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="parcels.aspx.cs" Inherits="PTC_Systems.parcels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="spacing">
            <div class="row">
                <div class="col-md-3">
                    <h2><strong>Tax Year</strong></h2>
                    <asp:Label ID="pcProcessYear" runat="server" Font-Size="large"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <span style="text-decoration: underline; font-size:larger" ><strong>Account</strong></span><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Property Id </strong>
                    <asp:Label ID="pcpropertyid" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Geographic Id </strong>
                    <asp:Label ID="pcgeoid" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Type </strong>
                    <asp:Label ID="pcparceltype" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Property Use Cd </strong>
                    <asp:Label ID="pcpropertyusecd" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Property Use Desc </strong>
                    <asp:Label ID="pcpropertyusedesc" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Legal Description </strong>
                    <asp:Label ID="pcparcellegaldesc" runat="server" Font-Size="Small"></asp:Label><br /><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <span style="text-decoration: underline; font-size:larger" ><strong>Location</strong></span><br />
                    </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Address </strong>
                    <asp:Label ID="pcaddressline1" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Address Line 2 </strong>
                    <asp:Label ID="pcaddressline2" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Neighborhood Code </strong>
                    <asp:Label ID="pchoodcd" runat="server" Font-Size="Small"></asp:Label><br /><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <span style="text-decoration: underline; font-size:larger" ><strong>Owner</strong></span><br />
                    </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Legal Entity </strong>
                    <asp:Label ID="pclegalentity" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Address </strong>
                    <asp:Label ID="pcowneraddress" runat="server" Font-Size="Small"></asp:Label><br /><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <span style="text-decoration: underline; font-size:larger" ><strong>Characteristics</strong></span><br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Gross Building Area </strong>
                    <asp:Label ID="pcgba" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Net Leasable Area </strong>
                    <asp:Label ID="pcnla" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <strong>Land Size </strong>
                    <asp:Label ID="pcacres" runat="server" Font-Size="Small"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <asp:HiddenField ID="hfparcelid" runat="server"/>
                    <ul class="pagination" style="align-content:center">
                        <li><a href="#">2013</a></li>
                        <li><a href="#">2014</a></li>
                        <li><a href="#">2015</a></li>
                        <li><a href="#">2016</a></li>
                        <li><a href="#">2017</a></li>
                    </ul>
                 </div>
            </div>
               <!--End of container-->
        </div>
    </div>












     
  
       











</asp:Content>
