<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="appealform.aspx.cs" Inherits="PTC_Systems.appealform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/wizardcss.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/wizardbootstrap.js"></script>


    <h1>Create Appeal Form</h1>

 
      <div class="container" style="text-space-collapse:initial">
       <div class="spacing">
           <div><h4>Appraisal District Information</h4></div>
    <div class="row">
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Appraisal District Name" />
        </div>
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="AD Phone" />
        </div>
    </div>

    <div class="row">
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Appraisal District Address" />
        </div>
    </div>

  
<div><h4>Owner Information</h4></div>
    <div class="row">
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Owner First Name" />
        </div>
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Owner Last Name" />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Owner Mailing Address" />
        </div>
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="City, State, Zip Code" />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-3 col-md-3">

            <input runat="server" type="text" class="form-control" placeholder="Owner Phone Number" />
        </div>
    </div>
         
   <div><h4>Property Information</h4></div>
           
    <div class="row">
        <div class="col-xs-3 col-md-3">
            <input runat="server" type="text" class="form-control" placeholder="Describe Property" />
        </div>
        <div class="col-xs-3 col=md-3">
            <input runat="server" type="text" class="form-control" placeholder="Account Number" />
        </div>
    </div>
           <button type="button" class="btn btn-primary">Generate Form</button> 
           </div>
          </div>

</asp:Content>