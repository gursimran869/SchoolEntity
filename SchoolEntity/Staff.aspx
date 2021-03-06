﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="SchoolEntity.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddresLabel" runat="server" Text='<%# Eval("Addres") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                            </td>
                            <td>
                                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddresLabel" runat="server" Text='<%# Eval("Addres") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                            </td>
                            <td>
                                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Contact</th>
                                            <th runat="server">Addres</th>
                                            <th runat="server">Designation</th>
                                            <th runat="server">Salary</th>
                                            <th runat="server">Email</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddresLabel" runat="server" Text='<%# Eval("Addres") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                            </td>
                            <td>
                                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolEntityConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [id] = @id" InsertCommand="INSERT INTO [Staff] ([Name], [Contact], [Addres], [Designation], [Salary], [Email]) VALUES (@Name, @Contact, @Addres, @Designation, @Salary, @Email)" SelectCommand="SELECT * FROM [Staff] ORDER BY [id] DESC" UpdateCommand="UPDATE [Staff] SET [Name] = @Name, [Contact] = @Contact, [Addres] = @Addres, [Designation] = @Designation, [Salary] = @Salary, [Email] = @Email WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Addres" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Salary" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Addres" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Salary" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>



        </div>

    </div>
</asp:Content>
