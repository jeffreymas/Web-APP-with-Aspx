<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="~/Assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="~/Assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    </head>
<body class="bg-silver-300">
    <div class="col-4" style="text-align:center; margin-left:auto; margin-right:auto">
        <form id="form1" runat="server">
            <br />
            <h1>Login</h1><br />
                <div class="row">
                    <div class="col-sm-4 form-group" style="text-align:left">
                        <asp:Label ID="lblEmail1" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div class="col-sm-8 form-group">
                        <asp:TextBox ID="Email" CssClass="form-control" runat="server" Width="275px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email!" ControlToValidate="Email" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4 form-group" style="text-align:left">
                        <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                    </div>
                    <div class="col-sm-8 form-group">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" Width="275px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Password!" ControlToValidate="Password" style="color: #FF0000"></asp:RequiredFieldValidator>
                    </div> 
                </div>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <asp:Button class="btn btn-info btn-block" ID="login" runat="server" Text="Login" OnClick="login_Click" />
                    </div>
                </div>
                <div class="text-center">
                    Don't Have Account?
                    <a class="color-blue" href="register.aspx">Signup here</a>
                </div>
        </form>
    </div>
    <script src="~/Assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="~/Assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="~/Assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS -->
    <script src="~/Assets/vendors/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
</body>
</html>
