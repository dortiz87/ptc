<%@ Page Title="" Language="C#" MasterPageFile="~/PageNav.master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="PTC_Systems.Clients" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="leftcolumn">
    <div style="width: 979px;" dir="ltr">

              <div style="float: left; width: 229px;">
                <asp:Image ID="Image1" runat="server" Height="123px" Width="222px" />
                </div>
              <div style="float: left; width: 747px;" class="text-center">
                  <h1>
                <asp:Label ID="lbclientname" runat="server" style="font-size: xx-large"></asp:Label>
                  </h1>
                </div>
               <br style="clear: left;" />

              </div>

            <div>
                <div>
                <strong><span style="font-size: large; text-decoration: underline">Client Details</span></strong></div>
                <div style="font-size: 16px">
                    <br />
                    <asp:Label ID="lbsaluation" runat="server"></asp:Label>
                    <asp:Label ID="lbfirstname" runat="server"></asp:Label>
                    <asp:Label ID="lblastname" runat="server"></asp:Label>
                </div>
                <br />
                <div style="float: left; width: 229px; height: 120px;">
               
                    <strong>
                    Address:</strong><br style="font-size: small" />
                    <span style="font-size: small">
                    <asp:Label ID="lbaddressline1" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lbaddressline2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lbcity" runat="server"></asp:Label>
                    ,
                    <asp:Label ID="lbstate" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lbzipcode" runat="server"></asp:Label>
               
                    <br />
                    <br />
               
                </div>
               <span  style="font-size: x-small">
              <div style="float: left; width: 749px; height: 120px; font-size: small;" class="text-left">
                
                  <strong>Email: </strong>
                  <asp:Label ID="Label2" runat="server"></asp:Label>
                  <strong>
                  <br />
                  Alt Email: </strong>
                  <asp:Label ID="lbaltemail" runat="server"></asp:Label>
                  <strong><br />
                  Bus Phone: </strong>
                  <asp:Label ID="lbbusphone" runat="server"></asp:Label>
                  <strong>&nbsp; Ext: </strong>
                  <asp:Label ID="lbextension" runat="server"></asp:Label>
                  <strong><br />
                  Cell Phone: </strong>
                  <asp:Label ID="lbcellphone" runat="server" BorderStyle="None"></asp:Label>
                  </span></div>
               <br style="clear: left;" />

            <div>

                <asp:GridView ID="propview" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Horizontal" Width="489px">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="PropertyId" DataNavigateUrlFormatString="Props.aspx?id={0}" Text="Details" />
                        <asp:BoundField DataField="PropertyName" HeaderText="PropertyName" ReadOnly="True" SortExpression="Property Name" />
                        <asp:BoundField DataField="PropertyCounty" HeaderText="PropertyCounty" ReadOnly="True" SortExpression="County" />
                        <asp:BoundField DataField="PropertyPrimaryUse" HeaderText="PropertyPrimaryUse" ReadOnly="True" SortExpression="Property Use" />
                        <asp:BoundField DataField="PropertyClientId" HeaderText="PropertyClientId" ReadOnly="True" SortExpression="PropertyClientId" Visible="False" />
                        <asp:BoundField DataField="PropertyId" HeaderText="PropertyId" ReadOnly="True" SortExpression="PropertyId" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    <span style="font-size: small">
    <asp:HiddenField ID="hfClientid" runat="server"/>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="PTC_Systems.db_ptcDataContext" EntityTypeName="" Select="new (PropertyName, PropertyCounty, PropertyFlagIncomeProducing, PropertyPrimaryUse, PropertyId, PropertyClientId)" TableName="Properties" Where="PropertyClientId == @PropertyClientId">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="hfClientid" DefaultValue="1" Name="PropertyClientId" PropertyName="Value" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>

            

          

                </span>

            </div>

            

          
    <div>
    </div>

            

          

                </span>
    </div>

            

          

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="rightcolumn">
    </asp:Content>


