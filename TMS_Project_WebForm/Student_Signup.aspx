<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project_WebForm.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <br />
    
    <div class="container mt-5" style="box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);
-webkit-box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);
-moz-box-shadow: -2px 1px 23px 3px rgba(0,0,0,0.75);">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron bg-primary text-white text-center">
                    <h1>Student SignUp</h1>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Father Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
            </div>


            <div class="col-md-4">
                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>Scchool</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Going To is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>
                <br />
            </div>




            <div class="col-md-4">
                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="TuitionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tuition Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="Select Tuition Type" ControlToValidate="TuitionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tuition Type is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Prefer</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" InitialValue="Select Tutor Prefer" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tutor Prefer is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter User Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z).*$"></asp:RegularExpressionValidator>--%>
                <br />
                
                <asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password Must be Identical"></asp:CompareValidator>
                <br />
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="StudentSignUpButton" OnClick="StudentSignUpButton_Click" runat="server" Text="Button" cssclass="btn btn-primary btn-block" />
            </div>
        </div>
        <br />
    </div>
    <br />

</asp:Content>
