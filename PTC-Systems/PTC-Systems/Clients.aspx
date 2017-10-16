<%@ Page Title="" Language="C#" MasterPageFile="~/PageNav.master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="PTC_Systems.Clients" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="leftcolumn">
    <div style="width: 979px;" dir="ltr">     
        <div style="float: left; width: 229px;">
            <asp:Image ID="Image1" runat="server" Height="123px" Width="222px" />
        </div>
        <div style="float: left; width: 747px;" class="text-center">
            <h1>
                <asp:Label ID="lbclientname" runat="server" Style="font-size: xx-large"></asp:Label>
            </h1>
        </div>
        <br style="clear: left;" />

    </div>

    <div>
        <strong><span style="font-size: large; text-decoration: underline">Client Details</span></strong>
    </div> <br /><br />

    <div class="row">
        <div class="col-md-4">
            <strong>Primary Contact</strong><br />
            <asp:Label ID="lbsaluation" runat="server"></asp:Label>
            <asp:Label ID="lbfirstname" runat="server"></asp:Label>
            <asp:Label ID="lblastname" runat="server"></asp:Label>
        </div>
    </div>
                <br />
              
    <div class="row">
        <address class="col-md-4">
            <strong>Address</strong><br />
            <asp:Label ID="lbaddressline1" runat="server"></asp:Label>
            <asp:Label ID="lbaddressline2" runat="server"></asp:Label><br />
            <asp:Label ID="lbcity" runat="server"></asp:Label>,
                        <asp:Label ID="lbstate" runat="server"></asp:Label>
            <asp:Label ID="lbzipcode" runat="server"></asp:Label>
        </address>
        <address class="col-md-4">

            <strong>Email</strong>
            <asp:Label ID="lbemail" runat="server"></asp:Label>
            <br />

            <strong>Alt Email</strong>
            <asp:Label ID="lbaltemail" runat="server"></asp:Label>
            <br />

            <strong>Business Phone</strong>
            <asp:Label ID="lbbusphone" runat="server"></asp:Label>

            <strong>Ext</strong>
            <asp:Label ID="lbextension" runat="server"></asp:Label>
            <br />

            <strong>Cell Phone: </strong>
            <asp:Label ID="lbcellphone" runat="server" BorderStyle="None"></asp:Label>

        </address>
    </div>
          
                   
               

    <div class="row">
        <div class="col-md-8">
            <strong>Property Listing</strong>
            <br />
            <asp:GridView ID="propview" runat="server" AutoGenerateColumns="False" Font-Size="Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Horizontal" Width="650px">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="PropertyId" DataNavigateUrlFormatString="Props.aspx?id={0}" Text="Details" />
                    <asp:BoundField DataField="PropertyName" HeaderText="Property" ReadOnly="True" SortExpression="Property Name" />
                    <asp:BoundField DataField="PropertyCounty" HeaderText="County" ReadOnly="True" SortExpression="County" />
                    <asp:BoundField DataField="PropertyPrimaryUse" HeaderText="Property Use" ReadOnly="True" SortExpression="Property Use" />
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
            <div class="row">
                <div>
                    <!--Trigger the modal with a button -->
                    <br />
                    <button runat="server" type="button" onclick="GetClientWizard_Click" class="btn btn-link" data-toggle="modal" data-target="#editclientdetails">Edit Client Details</button>
                </div>
                <div><button runat="server" id="addproperty" type="button" class ="btn btn-link">Add Property</button></div>
            </div>
            <span style="font-size: small">
                <asp:HiddenField ID="hfClientid" runat="server" />
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="PTC_Systems.db_ptcDataContext" EntityTypeName="" Select="new (PropertyName, PropertyCounty, PropertyFlagIncomeProducing, PropertyPrimaryUse, PropertyId, PropertyClientId)" TableName="Properties" Where="PropertyClientId == @PropertyClientId">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="hfClientid" DefaultValue="1" Name="PropertyClientId" PropertyName="Value" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </span>
        </div>
    </div>

   <!-- Modal -->
    <div class="modal fade" id="editclientdetails" role="dialog">
        <div class="modal-dialog modal-lg">
   <!-- Begin Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Edit Client Details</h4>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="spacing">
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbClient">Client Name</label>
                                    <asp:TextBox id="udClientName" runat="server" CssClass="form-control" />
                                </div>                              
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientaddressline1">Address Line 1</label>
                                    <input runat="server" class="form-control" id="udClientAddressLine1" placeholder="Main Office Address" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="udclientcontact">Main Contact</label>
                                    <select runat="server" class="form-control" id="ClientContactdd"></select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientaddressline2">Address Line 2</label>
                                    <input runat="server" type="text" class="form-control" id="udClientAddressLine2" placeholder="Optional" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbaddresscity">City</label>
                                    <input runat="server" type="text" class="form-control" id="udClientAddressCity" placeholder="City" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbClientState">State</label>
                                    <input runat="server" type="text" class="form-control" id="udClientAddressState" placeholder="State" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbClientZip">Zip Code</label>
                                    <input runat="server" type="email" class="form-control" id="udClientAddressZip" placeholder="Zip Code" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="lbClientNotes">Notes</label>
                                    <textarea runat="server" class="form-control" id="udClientNotes" rows="4"></textarea>
                                </div>
                            </div>                                                                     
                        </div>
                    </div>
                </div>
               <div class="modal-footer pull-right">
          <button runat="server" type="button" class="btn btn-default" onserverclick="Save_Click" data-dismiss="modal" >Save & Close</button>
        </div>
        <div class="modal-footer">
            <asp:LinkButton runat="server" OnClick="Save_Click" Text="test"></asp:LinkButton>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
        </div>   
    </div>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="rightcolumn">
  
    </asp:Content>


