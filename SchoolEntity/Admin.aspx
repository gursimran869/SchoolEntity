<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SchoolEntity.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-md-12">
                
                <div class="form-group">
                    <label>Enter User Name </label><br />
                    <asp:TextBox ID="txtId" runat="server" Class="form-control-lg" placeholder="Enter User Name"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Enter User Password </label><br />
                    <asp:TextBox ID="txtPassword" runat="server" Class="form-control-lg" placeholder="Enter User Password"></asp:TextBox>

                </div>

                <div class="form-group">

                    <asp:Button ID="btnSubmit" runat="server" Text="Sign In " Class="btn btn-primary" OnClick="btnSubmit_Click" />
                 <h1 id="result" runat="server"> </h1>
                </div>




            </div>


        </div>

    </div>
</asp:Content>
