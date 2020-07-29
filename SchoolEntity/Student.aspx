﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SchoolEntity.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF;color: #284775;">
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
                                <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
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
                                <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
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
                                <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ClassTextBox" runat="server" Text='<%# Bind("Class") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF;color: #333333;">
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
                                <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Contact</th>
                                            <th runat="server">DateOfBirth</th>
                                            <th runat="server">Class</th>
                                            <th runat="server">Address</th>
                                            <th runat="server">Fee</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
                        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
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
                                <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ClassLabel" runat="server" Text='<%# Eval("Class") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
       
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolEntityConnectionString2 %>" DeleteCommand="DELETE FROM [Student] WHERE [id] = @id" InsertCommand="INSERT INTO [Student] ([Name], [Contact], [DateOfBirth], [Class], [Address], [Fee]) VALUES (@Name, @Contact, @DateOfBirth, @Class, @Address, @Fee)" SelectCommand="SELECT * FROM [Student] ORDER BY [id] DESC" UpdateCommand="UPDATE [Student] SET [Name] = @Name, [Contact] = @Contact, [DateOfBirth] = @DateOfBirth, [Class] = @Class, [Address] = @Address, [Fee] = @Fee WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Fee" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Class" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Fee" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
       
                </div>
            </div>
         </div>
</asp:Content>
