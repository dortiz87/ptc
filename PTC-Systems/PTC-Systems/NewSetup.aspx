<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewSetup.aspx.cs" Inherits="PTC_Systems.NewClientSetup" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8">

    <!-- If IE use the latest rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Set the page to the width of the device and set the zoon level -->
    <meta name="viewport" content="width = device-width, initial-scale = 1">
    <title>Prop Tax Systems</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="446px" Width="1139px" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" title="Add Client">
                    <br />
                    <asp:Image ID="wzClientLogo" runat="server" Height="113px" Width="202px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    Contact Person:
                    <asp:DropDownList ID="ClientContactdd" runat="server" Height="26px" Width="196px">
                    </asp:DropDownList>
                    <br />

                    Client Active:<asp:CheckBox ID="wzClientActive" runat="server" />
                    <br />
                    Active Date:<asp:TextBox ID="wzClientActiveDate" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                   
     
                    <br />
                 
                    <div class="form-group">
                        <div class="col-md-4">
                            <label for="lbClientName">Client Name</label>
                            <input runat="server" type="text" class="form-control" id="wzClientName" placeholder="Client Name">
                            <br />
                            <label for="lbAddressLine1">Address Line 1</label>
                            <input runat="server" type="text" class="form-control" id="wzClientAddressLine1" placeholder="Address Line 1">
                        </div>
                    </div>
                       
                  


                    Address Line 2<asp:TextBox ID="wzClientAddresLine2" runat="server"></asp:TextBox>
                    <br />
                    City:<asp:TextBox ID="wzClientAddressCity" runat="server"></asp:TextBox>
                    <br />
                    State:<asp:TextBox ID="wzClientAddressState" runat="server"></asp:TextBox>
                    <br />
                    Zip Code:<asp:TextBox ID="wzClientAddressZip" runat="server"></asp:TextBox>
                    <br />
                    Notes:<asp:TextBox ID="wzClientNotes" runat="server"></asp:TextBox>
                    <br />
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Set Up Property(ies)">
                    <strong>Property Details<br />Property Contact Person:</strong><asp:DropDownList ID="PropertyContactdd" runat="server" Height="21px" Width="143px">
                    </asp:DropDownList>
                    <br />Property Name:<asp:TextBox ID="wzpPropertyName" runat="server"></asp:TextBox>
                    <br />
                    Internal Code:<asp:TextBox ID="wzpInternalCode" runat="server"></asp:TextBox>
                    <br />
                    County:<asp:TextBox ID="wzpPropertyCounty" runat="server"> </asp:TextBox>
                    <br />
                    Active?<asp:CheckBox ID="wzpPropertyIsActive" runat="server" />
                    <br />
                    Date Activated:<asp:TextBox ID="wzpPropertyActivatedDate" runat="server"></asp:TextBox>
                    <br />
                    AddressLine1:<asp:TextBox ID="wzpPropertyAddressLine1" runat="server"></asp:TextBox>
                    <br />
                    AddressLine2:<asp:TextBox ID="wzpPropertyAddressLine2" runat="server"></asp:TextBox>
                    <br />
                    City:<asp:TextBox ID="wzpPropertyAddressCity" runat="server"></asp:TextBox>
                    <br />
                    State:<asp:TextBox ID="wzpPropertyAddressState" runat="server"></asp:TextBox>
                    <br />
                    Zip Code:<asp:TextBox ID="wzpPropertyAddressZip" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Property Characteristics<br /></strong>Property Use:<asp:TextBox ID="wzpPropertyPrimaryUse" runat="server"></asp:TextBox>
                    <strong>
                    <br />
                    </strong>
                    <br />
                    Year Built:<asp:TextBox ID="wzpPropertyCharYearBuilt" runat="server"></asp:TextBox>
                    <br />
                    Number of Units:<asp:TextBox ID="wzpPropertyCharUnits" runat="server"></asp:TextBox>
                    <br />
                    Gross Building Area:<asp:TextBox ID="wzpPropertyCharGBA" runat="server"></asp:TextBox>
                    <br />
                    Net Leasable Area:<asp:TextBox ID="wzpPropertyCharNLA" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Property Sales Information</strong><br />Sales Price:<asp:TextBox ID="wzpPropertyInfoSalesPrice" runat="server"></asp:TextBox>
                    <br />
                    Sales Date:<asp:TextBox ID="wzpPropertyInfoSalesDate" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <strong>Information Needed<br /></strong>AOA Received?<asp:CheckBox ID="wzpPropertyFlagAOAReceived" runat="server" />
                    <br />
                    Expiration Date:<asp:TextBox ID="wzpPropertyAOAExpDate" runat="server"></asp:TextBox>
                    <br />
                    Property Income Producing?
                    <asp:CheckBox ID="wzpPropertyFlagIncomeProducing" runat="server" />
                    <br /> Income &amp; Expense Needed?<asp:CheckBox ID="wzpPropertyFlagIEReceived" runat="server" />
                    <br />
                    Rent Rolls Needed?<asp:CheckBox ID="wzpPropertyFlagRRReceived" runat="server" />
                    <br />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Set Up Parcel(s)">
                    &nbsp;&nbsp; Enter Property Id&nbsp;&nbsp;
                    <asp:TextBox ID="txtSearchPID" runat="server"></asp:TextBox>
                    &nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp; Select County&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSearchCounty" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ParcelInfoLookup" runat="server" OnClick="Button1_Click" Text="Search" />
                    <br /> <br /> Doing Business As:<asp:TextBox ID="txtdba" runat="server"></asp:TextBox>
                    <br />
                    Geographic ID:<asp:TextBox ID="txtgeoid" runat="server"></asp:TextBox>
                    <br /> Parcel Type:<asp:TextBox ID="txtparceltype" runat="server"></asp:TextBox>
                    <br /> Property Use Code:<asp:TextBox ID="txtpropusecode" runat="server"></asp:TextBox>
                    <br /> Property Use Desc:<asp:TextBox ID="txtpropusedesc" runat="server"></asp:TextBox>
                    <br /> Legal Desc:<asp:TextBox ID="txtlegaldesc" runat="server"></asp:TextBox>
                    <br /> Address:<asp:TextBox ID="txtaddressline2" runat="server"></asp:TextBox>
                    <br /> Legal Owner:<asp:TextBox ID="txtlegalowner" runat="server" Width="716px"></asp:TextBox>
                    <br /> Owner Address:<asp:TextBox ID="txtowneraddress" runat="server"></asp:TextBox>
                    <br /> City:<asp:TextBox ID="txtownercity" runat="server"></asp:TextBox>
                    <br /> State:<asp:TextBox ID="txtownerstate" runat="server"></asp:TextBox>
                    <br /> Zip:<asp:TextBox ID="txtownerzip" runat="server"></asp:TextBox>
                    <br /> Gross Building Area:<asp:TextBox ID="txtgba" runat="server"></asp:TextBox>
                    <br /> Net Leasable Area:<asp:TextBox ID="txtnla" runat="server"></asp:TextBox>
                    <br /> Land Size:<asp:TextBox ID="txtlandsize" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="Verify Values">
                    <br />
                    <br />
                    <br />
                    Improvement Homesite Value:<asp:TextBox ID="txtIHV3" runat="server"></asp:TextBox>
                    <br />
                    Improvemnet Non-Homesite Value:<asp:TextBox ID="txtINHV3" runat="server"></asp:TextBox>
                    <br />
                    Land Homesite Value:<asp:TextBox ID="txtLHV3" runat="server"></asp:TextBox>
                    <br />
                    Land Non-Homesite Value:<asp:TextBox ID="txtLNHV3" runat="server"></asp:TextBox>
                    <br />
                    Agricultural Market Valuation:<asp:TextBox ID="txtAMV3" runat="server"></asp:TextBox>
                    <br />
                    Timber Market Valuation:<asp:TextBox ID="txtTMV3" runat="server"></asp:TextBox>
                    <br />
                    Market Value:<asp:TextBox ID="txtMV3" runat="server"></asp:TextBox>
                    <br />
                    Ag or Timber Use Value Reduction:<asp:TextBox ID="txtAGTIMRED3" runat="server"></asp:TextBox>
                    <br />
                    Appraised Value:<asp:TextBox ID="txtAPPVAL3" runat="server"></asp:TextBox>
                    <br />
                    HS Cap:<asp:TextBox ID="txtHSCAP3" runat="server"></asp:TextBox>
                    <br />
                    Assessed Value:<asp:TextBox ID="txtASSVAL3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
