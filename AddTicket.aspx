<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddTicket.aspx.cs" Inherits="AdminTemplate.AddTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMaster" runat="server">
    <style>
        .top-buffer { margin-top:20px; }

        .table td input{
            border: #f9f9f9;
            background-color: #f9f9f9;
        }
        .table th{
            text-overflow: ellipsis;
            overflow: hidden;
            max-width: 90px;
        }
        .btn-file {
  position: relative;
  overflow: hidden;
}
        .select2 {
width:100%!important;
}
        .select2-selection {
height: 38px !important;
}
      .select2-container--default .select2-selection--single .select2-selection__rendered {
    color: #6e707e !important;
    line-height: 35px !important;
}

          .select2-container--default .select2-selection--single {
    border: 1px solid #d1d3e2 !important;
}

        .btn-file input[type=file] {
  position: absolute;
  top: 0;
  right: 0;
  text-align: left;
  filter: alpha(opacity=0);
  opacity: 0;
  outline: none;
  cursor: inherit;
  display: block;
  border-radius: 50%;
      max-width: 25px;
     
}
    </style>
   <div class="container-fluid">
       <div class="d-sm-flex align-items-center justify-content-between mb-4" style="margin-top: 1rem;">
            <h1 class="h3 mb-0 pagetitle">Add Ticket</h1>
           <form>  
            <div class="col-xs-6 form-group">
                <label >Select Team</label>
                <span class="required">*</span>
               <select id="team" class="selectpicker">
                <%--<option value="1001">Open</option>
                <option value="1002">Sent for DH approval</option>
                <option value="1003">Sent for UH approval</option>
                <option value="1004">PO requested</option>
                <option value="1005">PO Created</option>
                <option value="1006">Material Received</option>
                <option value="1007">Hold</option>--%>
              </select>
              </div>
               </form>  
            </div>
       <div class="row">
           <div class="col-xl-12 col-lg-7">
                     <form runat="server">   
           <div class="row">
              <div class="col-xs-6 col-md-3 form-group" >
                <label >Material Description</label>
                  <span class="required">*</span>
                <textarea type="text" class="form-control" id="materialDescription" data-mandatory></textarea>
               </div>
                <div class="col-xs-6 col-md-3 form-group" >
                    <label >Quantity</label>
                    <span class="required">*</span>
                    <input type="number" class="form-control" id="quantity" placeholder="Quantity" data-mandatory>
                </div>
               <div class="col-xs-6 col-md-3 form-group" >
                <label >Part No.</label>
                <input type="textarea" class="form-control" id="partNumber" placeholder="Part Number">
               </div>  
               <div class="col-xs-6 col-md-3 form-group" >
                <label >Purpose</label>
                <span class="required">*</span>
                <input type="text" class="form-control" id="purpose" placeholder="Purpose" data-mandatory>
               </div>
            </div>
           <div class="row">                      
              <div class="col-xs-6 col-md-3 form-group" >
                <label >Supplier</label>
                  <span class="required">*</span>
                <input type="text" class="form-control" id="supplier" placeholder="Supplier" data-mandatory>
               </div> 
               <div class="col-xs-6 col-md-3 form-group" >
                <label >Type</label>
                   <span class="required">*</span>
                <select id="type" class="form-control" data-live-search="true" data-mandatory>
                    <option value="9999" selected disabled>Choose Type</option>
                    <option value="3001" r3001>Opex</option>
                    <option value="3002" r3002>Capex</option>
                </select>
                </div>
               <div class="col-xs-6 col-md-3 form-group">
                <label >Material Request</label>
                     <span class="required">*</span>
                     <select id="materialRequest" class="form-control" data-live-search="true" data-mandatory>
                     </select>
               </div>
               <div class="col-xs-6 col-md-3 form-group">
                <label for="exampleFormControlFile1">Quatation</label>
                <input type="file" class="form-control-file quatation" id="quatation">
              </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4 form-group">
                    <button  class="btn btn-primary" id="addRequest">Add Request</button>
                </div>
                <div class="col-xs-6 col-md-4 form-group">
                    <button  class="btn btn-success"  id="saveTicket"  style="display: none;" >Save Ticket</button>
                </div>
            </div>
        </form>
            </div>

            <%--<div class="col-xl-5 col-lg-5">
                    <form id="ticketCollection">
                       <div class="card shadow col-xs-6">
                            <!-- Card Header - Accordion -->
                            <a href="#collapseCardExample" class="d-block card-header py-3 collapsed" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="collapseCardExample">
                              <h6 class="m-0 font-weight-bold text-primary">Collapsable Card Example</h6>
                            </a>
                            <!-- Card Content - Collapse -->
                            <div class="collapse" id="collapseCardExample" style="">
                              <div class="card-body">
                                <form>  
                                     <div class="form-group">
                                        <label >Material Description</label>
                                        <textarea type="text" class="form-control" id="materialDescription" ></textarea>
                                       </div>
                                        <div class="form-group">
                                            <label >Quantity</label>
                                            <input type="number" class="form-control" id="quantity" placeholder="Quantity">
                                        </div>
                                        <div class="form-group">
                                            <label >Part No.</label>
                                            <input type="textarea" class="form-control" id="partNumber" placeholder="Part Number">
                                       </div>            
                                       <div class="form-group">
                                            <label >Purpose</label>
                                            <input type="text" class="form-control" id="purpose" placeholder="Purpose">
                                        </div>
                                         <div class="form-group">
                                            <label >Material Request</label>
                                            <input type="text" class="form-control" id="materialRequest" placeholder="Material Request">
                                       </div>
                                       <div class="form-group">
                                            <label for="exampleFormControlFile1">Quatation</label>
                                            <input type="file" class="form-control-file quatation">
                                      </div>
                                 </form>  
                              </div>
                            </div>
                          </div>
                  </form>  
           </div> --%>
       </div> 
        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary" id="request-count">Requests (0)</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table" id="tbl-request">
                  <thead>
                    <tr>
                      <th scope="col">Material Description</th>
                      <th scope="col">Quantity</th>
                      <th scope="col">Part No.</th>
                      <th scope="col">Purpose</th>
                      <th scope="col">Supplier</th>
                      <th scope="col">Type</th>
                      <th scope="col">Material Request</th>
                      <th scope="col">Quatation</th>
                      <th scope="col"></th>
                    </tr>
                  </thead>
                    <tbody></tbody>
                 <%-- <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td colspan="2">Larry the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>--%>
                </table>
                    </div>
            </div>
        </div>
   </div> <script src="PageScript/AddTicket.js"></script>
</asp:Content>
