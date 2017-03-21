<%@ Page Title="" Language="C#" MasterPageFile="~/PageNav.master" AutoEventWireup="true" CodeBehind="Props.aspx.cs" Inherits="PTC_Systems.Props" %>
<asp:Content ID="Content1" ContentPlaceHolderID="leftcolumn" runat="server">
    <div style="height: 528px">
        <span style="text-decoration: underline"><strong>Property Information<br />
        </strong>
        <asp:Image ID="Image1" runat="server" Height="121px" Width="176px" />
        </span>
        <br />
        <strong>
        <asp:Label ID="ptfirstname" runat="server"></asp:Label>
        </strong>&nbsp;<strong><asp:Label ID="ptlastname" runat="server"></asp:Label>
        <br />
        </strong>
        <asp:Label ID="ptclientname" runat="server"></asp:Label>
        <br />
        <strong>Email:</strong>
        <asp:Label ID="ptemail" runat="server"></asp:Label>
        <br />
        <strong>Office Phone:</strong>
        <asp:Label ID="ptbusphone" runat="server"></asp:Label>
        <br />
        <strong>Celluar Phone:</strong>
        <asp:Label ID="ptcellphone" runat="server"></asp:Label>
        <br />
        <strong>Fax Number:</strong>
        <asp:Label ID="ptfaxnumber" runat="server"></asp:Label>
        <br />
        <br />
        <strong>
        <asp:Label ID="ptcounty" runat="server"></asp:Label>
        <br />
        <br />
        Address:</strong><br />
        <asp:Label ID="ptaddressline1" runat="server"></asp:Label>
        <asp:Label ID="ptaddresline2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="ptcity" runat="server"></asp:Label>
        ,<asp:Label ID="ptstate" runat="server"></asp:Label>
        <asp:Label ID="ptzip" runat="server"></asp:Label>
        <br />
        <br />
        <strong>Year Built:</strong>
        <asp:Label ID="ptyearbuilt" runat="server"></asp:Label>
        <br />
        <strong>Num of Units:</strong>
        <asp:Label ID="ptunits" runat="server"></asp:Label>
        <br />
        <strong>Gross Building Area:</strong>
        <asp:Label ID="ptgba" runat="server"></asp:Label>
        <br />
        <strong>Net Lease Area:</strong>
        <asp:Label ID="ptnla" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="ptactivestatus" runat="server"></asp:Label>
        <asp:Label ID="ptactivedate" runat="server"></asp:Label>
    <asp:HiddenField ID="hfpropid" runat="server" />
    </div>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="rightcolumn" runat="server">
</asp:Content>
