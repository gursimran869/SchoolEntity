<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SchoolEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                
                <div class="form-group">
                    <label>Enter  Name </label><br />
                    <asp:TextBox ID="txtId" runat="server" Class="form-control-lg" placeholder="Enter  Name"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Enter Email-ID </label><br />
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Class="form-control-lg" placeholder="Enter Email-ID"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Enter Contact No </label><br />
                    <asp:TextBox ID="txtNo" runat="server" TextMode="Number" Class="form-control-lg" placeholder="Enter Contact No "></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Enter Message</label><br />
                    <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Class="form-control-lg" placeholder="Enter Message "></asp:TextBox>

                </div>




                <div class="form-group">

                    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" Class="btn btn-primary" OnClick="btnSubmit_Click" />
                       <h1 id="result" runat="server"> </h1>
                </div>




            </div>


        </div>

    </div>

</asp:Content>
