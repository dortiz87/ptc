<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsetup.aspx.cs" Inherits="PTC_Systems.newsetup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link href="Content/bootstrap.min.css" rel="stylesheet" />
<link href="Content/wizardcss.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/wizardbootstrap.js"></script>
    

    <title>Prop Tax Systems</title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
    <div class="row">
    	<section>
        <div class="wizard">
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                        
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-user"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-home"></i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="disabled">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-picture"></i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="disabled">
                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                                <i class="glyphicon glyphicon-ok"></i>
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
                            <div class="col-md-6">
                                <label for="lbclientname">Client Name</label>
                                <input runat="server" type="text" class="form-control" id="wzClientName" placeholder="Client Name"/>
                            </div>
                            <div class ="col-md-2 col-xm-2">
                                <label for="lbclientactivedate">Date Activated</label>
                                <input runat="server" type="date" class="form-control" id="wzClientActiveDate"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="lbclientaddressline1">Address Line 1</label>
                                <input runat="server" type="text" class="form-control" id="wzClientAddressLine1" placeholder="Main Office Address"/>
                                </div>
                            </div>
                            <div class ="row">
                            <div class="col-md-6">
                                <label for="lbclientaddressline2">Address Line 2</label>
                                <input runat="server" type="text" class="form-control" id="wzClientAddressLine2" placeholder="Optional"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-xs-2">
                                <label for="lbaddresscity">City</label>
                                <input runat="server" type="text" class="form-control" id="wzClientAddressCity" placeholder="City"/>
                            </div>
                            <div class="col-md-2 col-xs-2">
                            <label for="lbClientState">State</label>
                            <input runat="server" type="text" class="form-control" id="wzClientAddressState" placeholder="State"/>
                               </div>
                            <div class="col-md-2 col-xs-2">
                            <label for="lbClientZip">Zip Code</label>
                            <input runat="server" type="email" class="form-control" id="wzClientAddressZip" placeholder="Zip Code"/>
                            </div>
                            </div>
                            <div class ="row">
                                <div class="col-md-6">
                                    <label for="lbClientNotes">Notes</label>
                                    <textarea runat="server" class="form-control" id="wzClientNotes" rows="4"></textarea>
                                </div>

                            </div>
                                
                                  
                              
                        
                    
                        </div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>

                     <!--Next step -->

                    <div class="tab-pane" role="tabpanel" id="step2">
                        <h3><strong>Property Details</strong></h3>
                        <hr />
                        <div class="step2">
                            
                                <div class="row">
                                    <div class="col-md-6">
                                     <label for="lbPropertyName">Property Name</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyName" placeholder="Property Name"/>
                                    </div>
                                
                                    
                                    <div class="col-md-2">
                                        <label for="lbPropertyCode">Internal Code</label>
                                        <input runat="server" type="text" class="form-control" id="wzInternalCode" placeholder="Internal Code" />
                                    </div>
                                    <div class="col-md-2">
                                        <label for="lbPropertyActiveDate">Active Date</label>
                                        <input runat="server" type="date" class="form-control" id="wzPropertyActiveDate" />
                                    </div>
                                </div>
                               
                                  
                              
                                <div class="row">
                                    <div class="col-md-6">
                                     <label for="lbPropertyAddressLine1">Address Line 2</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyAddressLine1" placeholder="Property Address"/>
                                    </div>
                                    </div>                      
                                <div class="row">
                                    <div class="col-md-6">
                                     <label for="lbPropertyAddressLine2">Address Line 2</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyAddressLine2" placeholder="Optional"/>
                                    </div>
                                    </div>
                                <div class="row">
                                    <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertyAddressCity">City</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyAddressCity" placeholder="City"/>
                                    </div>
                                       <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertyAddressState">State</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyAddressState" placeholder="State"/>
                                    </div>
                                       <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertyAddressZip">Zip Code</label>
                                     <input runat="server" required="required" type="text" class="form-control"  id="wzPropertyAddressZip" placeholder="Zip Code"/>
                                    </div>
                                    </div>                              
                                    <div class="row">
                                         <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertyYearBuilt">Year Built</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyCharYearBuilt" placeholder="Year Built"/>
                                    </div>
                                        <div class="col-md-4 col-xs-4"> <label for="lbPropertyUse">Property Use</label>
                                            <select name="dbpropertyuse" id="wzPropertyPrimaryuse" class="dropselectsec1">
                                                <option>Property Use</option>
                                                <option>SINGLE FAMILY</option>
                                                <option>RURAL</option>
                                                <option>MANUFACTURED HOME</option>
                                                <option>LAND</option>
                                                <option>SERVICE STATION</option>
                                                <option>HOME OWNERS ASSOCIATION</option>
                                                <option>COMMON ELEMENT</option>
                                                <option>PUBLIC ACCESS AIRPORT</option>
                                                <option>conv code</option>
                                                <option>RAILROAD RIGHT OF WAY - BPP</option>
                                                <option>DO NOT USE</option>
                                                <option>conv code</option>
                                                <option>conv code</option>
                                                <option>conv propuse code</option>
                                                <option>MISC PROPERTY USE</option>
                                                <option>BILLBOARD SITE</option>
                                                <option>TRANSMISSION SITE</option>
                                                <option>RESIDENTIAL-CML USE</option>
                                                <option>RELIGIOUS USE</option>
                                                <option>PUBLIC USE LAND</option>
                                                <option>RESTRICTED USE LAND</option>
                                                <option>EASEMENT LAND</option>
                                                <option>CONTAMINATED LAND</option>
                                                <option>FLOOD LAND</option>
                                                <option>TRANSITIONAL USE </option>
                                                <option>VACANT LAND</option>
                                                <option>LAND ONLY ACCOUNT</option>
                                                <option>PAD SITE</option>
                                                <option>COMMERCIAL PARKING LOT</option>
                                                <option>POLLUTION CONTROL PROPERTY</option>
                                                <option>HIGH RISE APARTMENT</option>
                                                <option>LUXURY HIGH RISE APT</option>
                                                <option>RECTORY</option>
                                                <option>FRATERNITY HOUSE</option>
                                                <option>TRANSITIONAL LIVING QUARTERS</option>
                                                <option>DORMITORY</option>
                                                <option>HOTEL - LIMITED SERVICE</option>
                                                <option>HOTEL - FULL SERVICE</option>
                                                <option>BED & BREAKFAST</option>
                                                <option>RES Bed & Breakfast</option>
                                                <option>HOME FOR THE ELDERLY</option>
                                                <option>MULTI-RES ASSISTED LIVING</option>
                                                <option>MULTI-RES RETIREMENT COMPLEX</option>
                                                <option>GROUP CARE HOME</option>
                                                <option>MULTI-RES SENIOR CITIZEN</option>
                                                <option>SENIOR MULTI-FUNCTION FACILITY (IL, AL, MC AND/OR</option>
                                                <option>CITY CLUB</option>
                                                <option>HEALTH CLUB</option>
                                                <option>CLUB HOUSE</option>
                                                <option>MOTEL</option>
                                                <option>EXTENDED STAY MOTEL</option>
                                                <option>LODGE</option>
                                                <option>CASINO</option>
                                                <option>BANQUET HALL/BALL ROOM</option>
                                                <option>COUNTRY CLUB</option>
                                                <option>MORTUARY</option>
                                                <option>RESTAURANT</option>
                                                <option>RESTAURANT - CHAIN</option>
                                                <option>Service Station</option>
                                                <option>CAFETERIA</option>
                                                <option>FAST FOOD RESTAURANT</option>
                                                <option>SNACK BAR</option>
                                                <option>BAR</option>
                                                <option>DEPARTMENT STORE</option>
                                                <option>DRUG STORE</option>
                                                <option>HEALTH CLUB</option>
                                                <option>CLUB HOUSE</option>
                                                <option>BANQUET HALL/BALLROOM</option>
                                                <option>RETAIL STORE</option>
                                                <option>STRIP CENTER</option>
                                                <option>RETAIL - CONDO COMMON ELEMENT</option>
                                                <option>FLORIST SHOP</option>
                                                <option>RETAIL/RES</option>
                                                <option>RETAIL/INDUSTRIAL</option>
                                                <option>GROCERY STORE/MARKET</option>
                                                <option>CONVENIENCE STORE</option>
                                                <option>FOOD MART - PRE FAB</option>
                                                <option>FUEL STATION</option>
                                                <option>CONVENIENCE STORE - HYPER</option>
                                                <option>DISCOUNT STORE</option>
                                                <option>WAREHOUSE DISCOUNT STORE</option>
                                                <option>POWER CENTER</option>
                                                <option>LIFESTYLE CENTER</option>
                                                <option>UPSCALE RETAIL/OFFICE/APTS</option>
                                                <option>FORTRESS MALL</option>
                                                <option>UPSCALE RETAIL/OFFICE</option>
                                                <option>BOWLING ALLEY</option>
                                                <option>DAY CARE CENTER</option>
                                                <option>MANUAL ARTS BUILDING</option>
                                                <option>GYMNASIUM</option>
                                                <option>LAUNDROMAT</option>
                                                <option>CHURCH PARKING LOT</option>
                                                <option>AUDITORIUM</option>
                                                <option>STAGE THEATER</option>
                                                <option>MOVIE THEATER</option>
                                                <option>FRATERNAL BUILDING</option>
                                                <option>SKATING RINK</option>
                                                <option>REGIONAL SHOPPING CENTER</option>
                                                <option>RACQUET HANDBALL CLUB</option>
                                                <option>MALL ANCHOR</option>
                                                <option>FITNESS CENTER</option>
                                                <option>CONVENTION CENTER</option>
                                                <option>BARBER/BEAUTY SHOP </option>
                                                <option>BRANCH POST OFFICE</option>
                                                <option>AUTO PARTS CHAIN</option>
                                                <option>COMMUNITY SHOPPING CENTER</option>
                                                <option>NEIGHBORHOOD SHOPPING CENTER</option>
                                                <option>ENCLOSED MALL</option>
                                                <option>CARWASH AUTOMATIC</option>
                                                <option>CARWASH CONVEYOR</option>
                                                <option>CARWASH DO-IT-YOURSELF</option>
                                                <option>FLEA MARKET</option>
                                                <option>LEASEHOLD - RETAIL</option>
                                                <option>EXEMPT RETAIL</option>
                                                <option>RESEARCH/ENGINEERING</option>
                                                <option>PHONE SWITCHING STATI0N</option>
                                                <option>PHONE REPEATER HUT</option>
                                                <option>CABLE TV HUB SITE</option>
                                                <option>MANUFACTURING - LIGHT</option>
                                                <option>OIL/FRACKING DEPOT (LARGE TANK)</option>
                                                <option>MANUFACTURING - HEAVY</option>
                                                <option>FOOD PROCESSING FACILITY</option>
                                                <option>SOLAR FARM</option>
                                                <option>LABORATORY BUILDING</option>
                                                <option>COMPUTER CENTER</option>
                                                <option>BROADCAST FACILITY</option>
                                                <option>COLD STORAGE</option>
                                                <option>GRANARY</option>
                                                <option>CHEMICAL DISTRIBUTION WHSE</option>
                                                <option>STORAGE WAREHOUSE</option>
                                                <option>MEGA WAREHOUSE</option>
                                                <option>DISTRIBUTION WAREHOUSE</option>
                                                <option>INDUSTRIAL/RES</option>
                                                <option>FIREWORKS STOREHOUSE</option>
                                                <option>TRANSIT WAREHOUSE</option>
                                                <option>MINI-WAREHOUSE</option>
                                                <option>HIGH RISE MINI-WAREHOUSE</option>
                                                <option>BOAT/RV STORAGE</option>
                                                <option>ARMORY</option>
                                                <option>FLEX INDUSTRIAL BLDG</option>
                                                <option>LOFT</option>
                                                <option>SERVICE SHOP</option>
                                                <option>TRUCKING FACILITY</option>
                                                <option>AUTO INSPECTION STATION</option>
                                                <option>TIRE REPAIR SHOP</option>
                                                <option>SERVICE GARAGE - AUTOMOTIVE</option>
                                                <option>COLLISION CENTER</option>
                                                <option>AUTOMOTIVE CENTER</option>
                                                <option>MINI-LUBE (FRANCHISE)</option>
                                                <option>MINI-LUBE (INDEPENDENT)</option>
                                                <option>STORAGE GARAGE - AUTOMOTIVE</option>
                                                <option>SHOWER BUILDING</option>
                                                <option>GARAGE SHOWROOM - AUTOMOTIVE</option>
                                                <option>RV DEALERSHIP</option>
                                                <option>AUTO DEALERSHIP</option>
                                                <option>PARKING GARAGE</option>
                                                <option>PARKING GARAGE W/LEASE SPACE</option>
                                                <option>POST OFFICE</option>
                                                <option>BUS STATION</option>
                                                <option>TRUCK STOP CENTER</option>
                                                <option>MAINTENANCE HANGAR</option>
                                                <option>STORAGE HANGAR</option>
                                                <option>STORAGE HANGER - EXEMPT</option>
                                                <option>STORAGE T-HANGAR</option>
                                                <option>USED CAR SALES (INDEPENDENT)</option>
                                                <option>USED CAR SALES (FRANCHISE)</option>
                                                <option>USED CAR SALES (CPO)</option>
                                                <option>TRAILER SALES</option>
                                                <option>LANDSCAPE NURSERY W/RETAIL</option>
                                                <option>GREENHOUSE -  WHOLESALE ONLY</option>
                                                <option>RESIDENTIAL GREENHOUSE</option>
                                                <option>MH SALES LOT</option>
                                                <option>LUMBER STORAGE</option>
                                                <option>SALVAGE YARD</option>
                                                <option>STORAGE YARD</option>
                                                <option>CONSTRUCTION YARD</option>
                                                <option>CEMENT BATCH PLANT</option>
                                                <option>STABLE</option>
                                                <option>TENNIS COURT</option>
                                                <option>SPORTS FIELD</option>
                                                <option>CONTAMINATED INDUSTRIAL PROPERTY</option>
                                                <option>MAINTENANACE HANGER - SATX</option>
                                                <option>LEASEHOLD - INDUSTRIAL</option>
                                                <option>OFFICE</option>
                                                <option>CORPORATE CAMPUS</option>
                                                <option>MECHANICAL PENTHOUSE</option>
                                                <option>OFFICE/RES</option>
                                                <option>OFFICE/RETAIL</option>
                                                <option>OFFICE CONDO</option>
                                                <option>OFFICE MEDICAL CONDO</option>
                                                <option>MEDICAL OFFICE</option>
                                                <option>DENTAL CLINIC</option>
                                                <option>SURGICAL CENTER</option>
                                                <option>CITY CLUB</option>
                                                <option>MORTUARY</option>
                                                <option>GOVERNMENT OFFICE</option>
                                                <option>JAIL</option>
                                                <option>GENERAL HOSPITAL</option>
                                                <option>RESTROOM BUILDING</option>
                                                <option>VETERINARY MEDICAL OFFICE</option>
                                                <option>OFFICE/FLEX</option>
                                                <option>OFFICE/LOFT</option>
                                                <option>KENNEL</option>
                                                <option>CAR RENTAL AGENCY</option>
                                                <option>URGENT CARE FACILITY</option>
                                                <option>SCHOOL</option>
                                                <option>CLASSROOM</option>
                                                <option>MULTI-PURPOSE SCHOOL</option>
                                                <option>SCHOOL - EXEMPT</option>
                                                <option>CONVALESCENT HOSPITAL</option>
                                                <option>CHURCH</option>
                                                <option>CHURCH PARKING LOT</option>
                                                <option>DIALYSIS CENTER</option>
                                                <option>CHURCH - EXEMPT</option>
                                                <option>LIBRARY</option>
                                                <option>LODGE</option>
                                                <option>BANK</option>
                                                <option>BRANCH BANK</option>
                                                <option>DRIVE THRU BANK</option>
                                                <option>FIRE STATION</option>
                                                <option>CEMETERY</option>
                                                <option>MOBILE HOME PARK</option>
                                                <option>RV PARK</option>
                                                <option>OFFICE - TOP VALUE</option>
                                                <option>LEASEHOLD - OFFICE</option>
                                                <option>SCHOOL</option>
                                                <option>EXEMPT - TOTAL EXEMPT</option>
                                                <option>EXEMPT - MISC USE</option>
                                                <option>CLASSROOM</option>
                                                <option>EXEMPT - DORMITORY</option>
                                                <option>EXEMPT - HOTEL FULL SERVICE</option>
                                                <option>EXEMPT - HOMES FOR THE ELDERLY</option>
                                                <option>EXEMPT - MULTI RESIDENCE ASSISTED LIVING  BASEMENT</option>
                                                <option>EXEMPT - GROUP CARE HOME</option>
                                                <option>EXEMPT - MULTI RESIDENCE SENIOR CITIZEN</option>
                                                <option>EXEMPT - CITY CLUB</option>
                                                <option>EXEMPT - HEALTH CLUB</option>
                                                <option>EXEMPT - CLUB HOUSE</option>
                                                <option>EXEMPT - BANQUET HALL/BALLROOM</option>
                                                <option>EXEMPT - MORTUARY</option>
                                                <option>MULTI-PURPOSE SCHOOL</option>
                                                <option>DISCOUNT STORE - EXEMPT</option>
                                                <option>DAY CARE CENTER</option>
                                                <option>MANUAL ARTS BUILDING</option>
                                                <option>EXEMPT - INDUSTRIAL BUILDING RESEARCH/ENGINEERING</option>
                                                <option>GYMNASIUM</option>
                                                <option>EXEMPT - OFFICE</option>
                                                <option>EXEMPT - LIBRARY</option>
                                                <option>EXEMPT - FIRE STATION</option>
                                                <option>SHOWER BUILDING</option>
                                                <option>EXEMPT - SCHOOL</option>
                                                <option>EXEMPT - DAYCARE</option>
                                                <option>EXEMPT - CHURCH</option>
                                                <option>EXEMPT - FRATERNAL BUILDING</option>
                                                <option>EXEMPT - LODGE</option>
                                                <option>CHURCH</option>
                                                <option>CHURCH PARKING LOT</option>
                                                <option>AUDITORIUM</option>
                                                <option>STAGE THEATER</option>
                                                <option>MOVIE THEATER</option>
                                                <option>FRATERNAL BUILDING</option>
                                                <option>SKATING RINK</option>
                                                <option>RAQUETBALL/HANDBALL CLUB</option>
                                                <option>FITNESS CENTER</option>
                                                <option>CONVENTION CENTER</option>
                                                <option>PAVILLION</option>
                                                <option>MOTEL</option>
                                                <option>EXTENDED STAY MOTEL</option>
                                                <option>LODGE</option>
                                                <option>CASINO</option>
                                                <option>MULTIPLE RESIDENCE/GARDEN APT</option>
                                                <option>SMALL APTS 4 TO 10 UNIT</option>
                                                <option>SMALL APARTMENTS</option>
                                                <option>APARTMENT HIGHRISE</option>
                                                <option>APARTMENT LUXURY HIGHRISE</option>
                                                <option>RECTORY</option>
                                                <option>FRATERNITY BUILDING</option>
                                                <option>DORMITORY</option>
                                                <option>MULT RES - ALL BILLS PAID</option>
                                                <option>BED AND BREAKFAST</option>
                                                <option>SUBSIDIZED MULTI-FAMILY</option>
                                                <option>100% EXEMPT APTARTMENTS</option>
                                                <option>50% EXEMPT APARTMENTS</option>
                                                <option>STUDENT HOUSING</option>
                                                <option>conv code</option>
                                                <option>TOP VALUE APARTMENTS</option>
                                                <option>LEASEHOLD - MULTI FAMILY</option>
                                                <option>AUTOMATIC CAR WASH</option>
                                                <option>CONVEYOR CAR WASH</option>
                                                <option>DO-IT-YOURSELF CAR WASH</option>
                                                <option>TRANSMISSION SITE</option>
                                                <option>LANDSCAPE NURSERY</option>
                                                <option>COMMERCIAL GREENHOUSE</option>
                                                <option>RESIDENTIAL GREENHOUSE</option>
                                                <option>LUMBER STORAGE</option>
                                                <option>CEMETERY</option>
                                                <option>PAR 3 GOLF COURSE</option>
                                                <option>PUTT PUTT GOLF COURSE</option>
                                                <option>REGULATION GOLF COURSE</option>
                                                <option>DRIVING RANGE</option>
                                                <option>SHOOTING RANGE</option>
                                                <option>THEME PARK</option>
                                                <option>STABLE</option>
                                                <option>TENNIS COURT</option>
                                                <option>SPORTS FIELDS</option>
                                                <option>MOBILE HOME PARK</option>
                                                <option>RV PARK</option>
                                                <option>LAND ONLY ACCT.</option>
                                                <option>PAD SITE</option>
                                                <option>SOLID WASTE LANDFILL</option>
                                                <option>QUARRY/GRAVEL PIT</option>
                                                <option>COMMERCIAL PARKING LOTS</option>
                                                <option>POLLUTION CONTROL PROPERTY</option>
                                                <option>TAXABLE LEASEHOLD </option>

                                            </select>
                                        </div>
                                        </div>
                                        <div class="row">
                                         <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertygba">Gross Building Area</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyCharGBA" placeholder="GBA"/>
                                    </div>
                                         <div class="col-md-2 col-xs-2">
                                     <label for="lbPropertynla">Net Leasable Area</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyCharNLA" placeholder="NLA"/>
                                    </div>
                                    </div>
                            <div class="row">
                                <div class="col-md-3 col-xs-3">
                                     <label for="lbPropertySalesDate">Date of Purchase</label>
                                     <input runat="server" type="date" class="form-control" id="wzPropertyInfoSalesDate" placeholder="Sale Date"/>
                                    </div>
                                <div class="col-md-3 col-xs-3">
                                     <label for="lbPropertySalesPrice">Purchase Price</label>
                                     <input runat="server" type="text" class="form-control" id="wzPropertyInfoSalesPrice" placeholder="Purchase Amount"/>
                                    </div>
                            </div>
                           
                            </div>
                            <div class="step-22">
                            
                            </div>
                     
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step3">
                        <div class="step33">
                        <h5><strong>Basic Details</strong></h5>
                        <hr/>
                            <div class="row mar_ned">
                                
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Date of birth</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <div class="row">
                                        <div class="col-md-4 col-xs-4 wdth">
                                            <select name="visa_status" id="visa_status" class="dropselectsec1">
                                                <option value="">Date</option>
                                                <option value="2">1</option>
                                                <option value="1">2</option>
                                                <option value="4">3</option>
                                                <option value="5">4</option>
                                                <option value="6">5</option>
                                                <option value="3">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4 col-xs-4 wdth">
                                            <select name="visa_status" id="visa_status" class="dropselectsec1">
                                                <option value="">Month</option>
                                                <option value="2">Jan</option>
                                                <option value="1">Feb</option>
                                                <option value="4">Mar</option>
                                                <option value="5">Apr</option>
                                                <option value="6">May</option>
                                                <option value="3">June</option>
                                                <option value="7">July</option>
                                                <option value="8">Aug</option>
                                                <option value="9">Sept</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4 col-xs-4 wdth">
                                            <select name="visa_status" id="visa_status" class="dropselectsec1">
                                                <option value="">Year</option>
                                                <option value="2">1990</option>
                                                <option value="1">1991</option>
                                                <option value="4">1992</option>
                                                <option value="5">1993</option>
                                                <option value="6">1994</option>
                                                <option value="3">1995</option>
                                                <option value="7">1996</option>
                                                <option value="8">1997</option>
                                                <option value="9">1998</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Marital Status</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <label class="radio-inline">
                                      <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Single
                                    </label>
                                    <label class="radio-inline">
                                      <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> Married
                                    </label>
                                </div>
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Highest Education</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <select name="highest_qualification" id="highest_qualification" class="dropselectsec">
                                        <option value=""> Select Highest Education</option>
                                        <option value="1">Ph.D</option>
                                        <option value="2">Masters Degree</option>
                                        <option value="3">PG Diploma</option>
                                        <option value="4">Bachelors Degree</option>
                                        <option value="5">Diploma</option>
                                        <option value="6">Intermediate / (10+2)</option>
                                        <option value="7">Secondary</option>
                                        <option value="8">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Specialization</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <input type="text" name="specialization" id="specialization" placeholder="Specialization" class="dropselectsec" autocomplete="off">
                                </div>
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Year of Passed Out</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <select name="year_of_passedout" id="year_of_passedout" class="birthdrop">
                                        <option value="">Year</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mar_ned">
                                <div class="col-md-4 col-xs-3">
                                    <p align="right"><stong>Total Experience</stong></p>
                                </div>
                                <div class="col-md-8 col-xs-9">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-6 wdth">
                                            <select name="visa_status" id="visa_status" class="dropselectsec1">
                                                <option value="">Month</option>
                                                <option value="2">Jan</option>
                                                <option value="1">Feb</option>
                                                <option value="4">Mar</option>
                                                <option value="5">Apr</option>
                                                <option value="6">May</option>
                                                <option value="3">June</option>
                                                <option value="7">July</option>
                                                <option value="8">Aug</option>
                                                <option value="9">Sept</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6 col-xs-6 wdth">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mar_ned">
                               
                            </div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class="btn btn-default next-step">Skip</button></li>
                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Save and continue</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="complete">
                        <div class="step44">
                            <h5>Completed</h5>
                            
                          
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </for>
        </div>
    </section>
   </div>
</div>
        
    </form>
</body>
</html>
