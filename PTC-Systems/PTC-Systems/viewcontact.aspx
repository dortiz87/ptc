<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewcontact.aspx.cs" Inherits="PTC_Systems.viewcontact" %>
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
                <input runat="server" type="text" class="form-control" id="ContactSaluation"/>
            </div>
            <div class="col-md-3">
                <label for="lbContactFirstName">First Name</label>
                <input runat="server" type="text" class="form-control" id="ContactFirstName" placeholder="First Name" />
            </div>
             <div class="col-md-3">
                <label for="lbContactLastName">Last Name</label>
                <input runat="server" type="text" class="form-control" id="ContactLastName" placeholder="Last Name" />
            </div>
        </div>
            <div class="row">      
            <div class="col-md-4">
                <label for="lbContactAddressLine1">Address Line 1</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressLine1" placeholder="Address Line 1" />
            </div>
            </div>
            <div class="row">
            <div class="col-md-4">
                <label for="lbContactAddressLine2">Address Line 2</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressLine2" placeholder="Address Line 2" />
            </div>
                </div>
            <div class="row">
            <div class="col-md-2">
                <label for="lbContactAddressCity">City</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressCity" placeholder="City" />
            </div>
            <div class="col-md-2">
                <label for="lbContactAddressState">State</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressState" placeholder="State" />
            </div>
            <div class="col-md-2">
                <label for="lbContactAddressZip">Zip Code</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressZip" placeholder="Zip Code" />
            </div>
                </div>
            <div class="row">
            <div class="col-md-4">
                <label for="lbContactEmail">Primary Email</label>
                <input runat="server" type="email" class="form-control" id="ContactAddressEmailAddress" placeholder="john.Doe@company.com" />
            </div>
            <div class="col-md-4">
                <label for="lbContactAltEmail">Secondary Email</label>
                <input runat="server" type="text" class="form-control" id="ContactAddressAltEmailAddress" placeholder="Secondary Email" />
                </div>
                </div>

                <div class="row">
                <div class="col-md-4">
                <label for="lbContactBusinessNumber">Phone Number</label>
                <input runat="server" type="tel" class="form-control" id="ContactBusinessNumber" placeholder="Phone Number" />
            </div>
                <div class="col-md-4">
                <label for="lbContactBusinessNumberExtension">Ext</label>
                <input runat="server" type="text" class="form-control" id="ContactBusinessNumberExt" placeholder="Ext" />
            </div>
                </div>
            <div class="row">
                <div class="col-md-4">
                <label for="lbContactCellularNumber">Cell Number</label>
                <input runat="server" type="tel" class="form-control" id="ContactCellularNumber" placeholder="Cell Number" />
            </div>
                <div class="col-md-4">
                <label for="lbContactFaxumber">Fax Number</label>
                <input runat="server" type="tel" class="form-control" id="ContactFaxNumber" placeholder="Fax Number" />
            </div>
          </div>
        </div>
       </div>
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
