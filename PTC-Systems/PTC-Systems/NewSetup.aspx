<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newsetup.aspx.cs" Inherits="PTC_Systems.newsetup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"><body></body>
<head>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/wizardcss.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/wizardbootstrap.js"></script>


    <title>Prop Tax Systems</title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
    </html>

    
   <div class="container">
    <div class="row">
    	<section>
        <div class="wizard">
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist" style="left: 0px; top: 0px">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                        
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-folder-open"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-chevron-right"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-chevron-right"></i>
                            </span>
                        </a>
                    </li>
                     <li role="presentation" class="disabled">
                        <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab" title="Step 4">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-chevron-right"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-folder-close"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

                    <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="step1">
                        <h3><strong>Client Details</strong></h3>
                        <hr />
                        <div class="step1">
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientname">Client Name</label>
                                    <input runat="server" type="text" class="form-control" id="wzClientName" placeholder="Client Name" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientactivedate">Date Activated</label>
                                    <input runat="server" type="date" class="form-control" id="wzClientActiveDate" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientaddressline1">Address Line 1</label>
                                    <input runat="server" type="text" class="form-control" id="wzClientAddressLine1" placeholder="Main Office Address" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientcontact">Main Contact</label>
                                    <select runat="server" class="form-control" id="ClientContactdd"></select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientaddressline2">Address Line 2</label>
                                    <input runat="server" type="text" class="form-control" id="wzClientAddressLine2" placeholder="Optional" />
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbaddresscity">City</label>
                                    <input runat="server" type="text" class="form-control" id="wzClientAddressCity" placeholder="City" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbClientState">State</label>
                                    <input runat="server" type="text" class="form-control" id="wzClientAddressState" placeholder="State" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbClientZip">Zip Code</label>
                                    <input runat="server" type="email" class="form-control" id="wzClientAddressZip" placeholder="Zip Code" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="auto-style1">
                                    <label for="lbClientNotes">Notes</label>
                                    <textarea runat="server" class="form-control" id="wzClientNotes" rows="4"></textarea>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <label>
                                        <input runat="server" type="checkbox" id="cbIncomeProducing" />  Income Producing</label>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input runat="server" type="checkbox" id="cbIEExpected" />  Income & Expense</label>
                                </div>
                                <div class="col-md-2">
                                    <label><input runat="server" type="checkbox" id="cbRRExpected" />  Rent Roll</label>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <label>
                                            <input runat="server" type="checkbox" id="cbAOAReceived" />
                                            Appointment of Agent</label>
                                    </div>
                                    </div>
                            <div class="row">
                                    <div class="col-md-3">
                                        <label for="lbaoaexpirationdate">AOA Expiration Date</label>
                                        <input runat="server" type="date" class="form-control" id="wzClientAOAExpDate" />
                                    </div>
                                </div>                     
                        </div>

                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>

                     <!--Step 2 I'm Watching You-->

                    <div class="tab-pane" role="tabpanel" id="step2">
                        <h3><strong>Property Details</strong></h3>
                        <hr />
                        <div class="step2">

                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertyName">Property Name</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyName" placeholder="Property Name" />
                                </div>


                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyCode">Internal Code</label>
                                    <input runat="server" type="text" class="form-control" id="wzInternalCode" placeholder="Internal Code" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyActiveDate">Active Date</label>
                                    <input runat="server" type="date" class="form-control" id="wzPropertyActiveDate" />
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertyAddressLine1">Address Line 1</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyAddressLine1" placeholder="Property Address" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbclientcontact">Property Contact</label>
                                    <select runat="server" class="form-control" id="PropertyContactdd"></select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertyAddressLine2">Address Line 2</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyAddressLine2" placeholder="Optional" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertyAddressLine2">County</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyCounty" placeholder="County" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyAddressCity">City</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyAddressCity" placeholder="City" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyAddressState">State</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyAddressState" placeholder="State" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyAddressZip">Zip Code</label>
                                    <input runat="server" required="required" type="text" class="form-control" id="wzPropertyAddressZip" placeholder="Zip Code" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-cs-2 col-md-2">
                                    <label for="lbPropertyYearBuilt">Year Built</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyCharYearBuilt" placeholder="Year Built" />
                                </div>
                                <div class="col-xs-4 col-md-4">
                                    <label for="lbPropertyUse">Property Use</label>
                                    <select runat="server" name="dbpropertyuse" id="wzPropertyPrimaryuse" class="form-control">
                                        <option>Property Use</option>
                                        <option>SINGLE FAMILY</option>
                                        <option>RURAL</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertyUnits">Number of Units</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyCharUnits" placeholder="Units" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertygba">Gross Building Area</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyCharGBA" placeholder="GBA" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbPropertynla">Net Leasable Area</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyCharNLA" placeholder="NLA" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertySalesDate">Date of Purchase</label>
                                    <input runat="server" type="date" class="form-control" id="wzPropertyInfoSalesDate" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbPropertySalesPrice">Purchase Price</label>
                                    <input runat="server" type="text" class="form-control" id="wzPropertyInfoSalesPrice" placeholder="Purchase Amount" />
                                </div>
                            </div>
                            

                        </div>                          
                     
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button runat="server" type="button" class="btn btn-default">Add Property</button></li>                       
                            <li><button runat="server" type="button" class="btn btn-primary next-step" >Save and continue</button></li>
                        </ul>
                    </div>
                        <!--Step 3 Yes You!-->

                    <div class="tab-pane" role="tabpanel" id="step3">
                        <div class="step2">

                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbParcelId">Enter Parcel Number</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelId" placeholder="Parcel Number" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbParcelcounty">Enter County</label>
                                    <input runat="server" type="text" class="form-control" required="required" id="wzParcelCounty" placeholder="County" />
                                    </div>
                                    <div class="col-md-1">
                                    <button ID="Button1" runat="server" class="btn btn-default" onserverclick="Button1_Click">Search</button>  
                                        </div>                               
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbparcelgeoid">Geographic Id</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelGeoId" placeholder="Geographic Id" />
                                </div>
                                <div class="col-xs-4 col-md-4">
                                    <label for="lbparcelgeoid">Geographic Id</label>
                                    <textarea runat="server" class="form-control" id="wzParcelLegalDesc" rows="1" placeholder="Legal Description" />
                                </div>
                            </div>
                            <div class="row">

                                <div class=" col-xs-2 col-md-2">
                                    <label for="lbparceltype">Parcel Type</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelType" placeholder="Type" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbdba">Doing Business As</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelDBA" placeholder="Doing Business As" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbneighborhoodcd">Neighborhood Code</label>
                                    <input runat="server" type="text" class="form-control" id="wzparcelneighborhoodcd" placeholder="Hood Code" />
                                </div>

                            </div>
                            <div class="row">

                                <div class="col-xs-2 col-md-2">
                                    <label for="lbpropertycd">Property Use Code</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelPropertyUseCode" placeholder="Use Code" />
                                </div>
                                <div class="col-xs-3 col-md-3">
                                    <label for="lbpropertyusedesc">Property Use Description</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelPropertyUseDesc" placeholder="Use Description" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbparcellbneighborhoodname">Neighborhood Name</label>
                                    <input runat="server" type="text" class="form-control" id="Text3" placeholder="Neighborhood Name" />
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="lbparcelownername">Owner Name</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelOwnerName" placeholder="Owner Name" />
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-xs-4 col-md-4">
                                    <label for="lbparcelowner">Owner Address</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelOwnerAddress" placeholder="Owner Address" />
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lnparcelowneraddresscity">City</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelOwnerAddressCity" placeholder="City" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lnparcelowneraddressstate">State</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelOwnerAddressState" placeholder="State" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lnparcelowneraddressZip">Zip Code</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelOwnerAddressZip" placeholder="Zip Code" />
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-xs-4 col-md-4">
                                    <label for="lbparceladdress">Location Address</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelAdressLine2" placeholder="Address" />
                                </div>


                            </div>                  
                            <div class="row">
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbparcelacres">Acres</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelAcres" placeholder="Acres" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbparecelgba">Gross Building Area</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelGBA" placeholder="GBA" />
                                </div>
                                <div class="col-xs-2 col-md-2">
                                    <label for="lbparcelnla">Net Leasable Area</label>
                                    <input runat="server" type="text" class="form-control" id="wzParcelNLA" placeholder="NLA" />
                                </div>
                            </div>

                        </div>
                        
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>                           
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
                        <!--Step 4-->

                            <div class="tab-pane" role="tabpanel" id="step4">
                                <div class="step2">


                            </div>
                                <ul class="list-inline pull-right">
                                    <li>
                                        <button type="button" class="btn btn-default prev-step">Previous</button></li>
                                    <li>
                                        <button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                                </ul>
                        </div>
                            <!--Complete execute wizard blahh-->
                    <div class="tab-pane" role="tabpanel" id="complete">
                        <div class="step44">
                            <h5>Completed</h5>
                            
                          
                       </div>
                    </div>
                    <div class="clearfix"></div>

        </div>
           
        </div>
    </section>
   </div>
</div>
    
       

</asp:Content>
