﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewcontact.aspx.cs" Inherits="PTC_Systems.viewcontact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<div class="container">
    
  <h2>Contacts</h2>
    <hr />
    <div class="row" style ="100px 0 100px 0">
        Contact Address Book Data 

        <asp:GridView runat="server" ID="Contact_Datagrid" AutoGenerateColumns="false" CssClass="table table-hover" edit   >
            <Columns>
                <asp:BoundField HeaderText="First Name" DataField="ContactFirstName"  />
                <asp:BoundField HeaderText="Last Name" DataField="ContactLastName"  />
                <asp:BoundField HeaderText="Email" DataField="ContactEmail"  />
            </Columns>
        </asp:GridView>
        
    </div>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Contact</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add New Contact</h4>
        </div>
        <div class="modal-body">
         
    <div class="container">
        <div class="spacing">
            <div class="row">
                <h2 style="margin:60px 0 40px 20px">Add New Contact</h2>
                <hr />
            </div>
        <div class="row">
             <div class="col-md-1">
                <label for="lbContactSaluation">Salutation</label>
                <input runat="server" type="text" class="form-control" id="fmContactSaluation"/>
            </div>
            <div class="col-md-3">
                <label for="lbContactFirstName">First Name</label>
                <input runat="server" type="text" class="form-control" id="fmContactFirstName" placeholder="First Name" />
            </div>
             <div class="col-md-3">
                <label for="lbContactLastName">Last Name</label>
                <input runat="server" type="text" class="form-control" id="fmContactLastName" placeholder="Last Name" />
            </div>
        </div>
            <div class="row">      
            <div class="col-md-4">
                <label for="lbContactAddressLine1">Address Line 1</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressLine1" placeholder="Address Line 1" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-4">
                <label for="lbContactAddressLine2">Address Line 2</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressLine2" placeholder="Address Line 2" />
            </div>
                </div>
            <div class="row">
            <div class="col-md-2">
                <label for="lbContactAddressCity">City</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressCity" placeholder="City" />
            </div>
            <div class="col-md-2">
                <label for="lbContactAddressState">State</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressState" placeholder="State" />
            </div>
            <div class="col-md-2">
                <label for="lbContactAddressZip">Zip Code</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressZip" placeholder="Zip Code" />
            </div>
                </div>
            <div class="row">
            <div class="col-md-4">
                <label for="lbContactEmail">Primary Email</label>
                <input runat="server" type="email" class="form-control" id="fmContactAddressEmailAddress" placeholder="john.Doe@company.com" />
            </div>
            <div class="col-md-4">
                <label for="lbContactAltEmail">Secondary Email</label>
                <input runat="server" type="text" class="form-control" id="fmContactAddressAltEmailAddress" placeholder="Secondary Email" />
                </div>
                </div>

                <div class="row">
                <div class="col-md-4">
                <label for="lbContactBusinessNumber">Phone Number</label>
                <input runat="server" type="tel" class="form-control" id="fmContactBusinessNumber" placeholder="Phone Number" />
            </div>
                <div class="col-md-4">
                <label for="lbContactBusinessNumberExtension">Ext</label>
                <input runat="server" type="text" class="form-control" id="fmContactBusinessNumberExt1" placeholder="Ext" />
            </div>
                </div>
            <div class="row">
                <div class="col-md-4">
                <label for="lbContactCellularNumber">Cell Number</label>
                <input runat="server" type="tel" class="form-control" id="fmContactCellularNumber" placeholder="Cell Number" />
            </div>
                <div class="col-md-4">
                <label for="lbContactFaxNumber">Fax Number</label>
                <input runat="server" type="tel" class="form-control" id="fmContactFaxNumber" placeholder="Fax Number" />
            </div>
          </div>
        </div>
       </div>
        </div>
          <div class="modal-footer pull-right">
          <button runat="server" type="button" class="btn btn-default" onserverclick="Save_Click" data-dismiss="modal"  >Save & Close</button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
          
      </div>
      
    </div>
  </div>
  
</div>

</body>
</html>

</asp:Content>
