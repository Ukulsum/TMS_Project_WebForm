﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS_Project_WebForm.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">


            <div class="row">


                <div class="col-md-6 mx-auto" style="box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);
-webkit-box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);
-moz-box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);">
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                    </div>

                    <asp:TextBox ID="UserNameTxt" placeholder="Enter User Name" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UserNameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                    <br />

                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" CssClass="btn btn-primary btn-block" runat="server" Text="Button" />
                    <br />

                </div>
            </div>

        </div>
    </form>
    <script src="~/assets/vendor/jquery/jquery.min.css"></script>
    <script src="~/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
