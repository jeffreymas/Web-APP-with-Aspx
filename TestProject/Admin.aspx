<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TestProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width initial-scale=1.0"/>
    <title>Jepri Test</title>
    <link href="Assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <link href="Assets/vendors/DataTables/datatables.min.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="Assets/vendors/bootstrap/dist/css/main.min.css" rel="stylesheet" />
    <!-- PAGE LEVEL STYLES-->
</head>

<body class="fixed-navbar">
    <div class="page-wrapper">
        <!-- START HEADER-->
    <form id="form1" runat="server">
        <header class="header">
            <div class="page-brand">
                <a class="link" href="index.html">
                    <span class="brand">Jepri
                        <span class="brand-tip">Test</span>
                    </span>
                    <span class="brand-mini">JT</span>
                </a>
            </div>
            <div class="flexbox flex-1">
                <!-- START TOP-LEFT TOOLBAR-->
                <ul class="nav navbar-toolbar">
                    <li>
                        <a class="nav-link sidebar-toggler js-sidebar-toggler"><i class="ti-menu"></i></a>
                    </li>
                </ul>
                <div class="text-right">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" width="75px" CssClass="btn btn-info " Text="Logout"/>
                </div> 
                <!-- END TOP-LEFT TOOLBAR-->
            </div>
        </header>
        <!-- END HEADER-->
        <!-- START SIDEBAR-->
        <nav class="page-sidebar" id="sidebar">
            <div id="sidebar-collapse">
                <div class="admin-block d-flex">
                    <div>
                        <img src="Assets/Image/admin-avatar.png" width="45px" />
                    </div>
                    <div class="admin-info">
                        <div class="font-strong">Welcome To</div><small>My Application</small></div>
                </div>
                <ul class="side-menu metismenu">
                    <li>
                        <a href="admin.aspx"><i class="sidebar-item-icon fa fa-th-large"></i>
                            <span class="nav-label">User List</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- END SIDEBAR-->
        <div class="content-wrapper">
            <!-- START PAGE CONTENT-->
            <div class="page-content fade-in-up">
                <div class="ibox">
                    <div class="ibox-head">
                        <div class="ibox-title">Data User</div>
                    </div>
                    <div class="ibox-body">                                           
                        <br />
                        <asp:Label ID="user" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" width="100%" CssClass="table table-striped table-bordered table-hover">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>                     
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id"/>
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [email], [username], [gender] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" InsertCommand="INSERT INTO [User] ([email], [username], [gender]) VALUES (@email, @username, @gender)" UpdateCommand="UPDATE [User] SET [email] = @email, [username] = @username, [gender] = @gender WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="gender" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="gender" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </form>
    </div>
    <!-- BEGIN PAGA BACKDROPS-->
    <div class="sidenav-backdrop backdrop"></div>
    <div class="preloader-backdrop">
        <div class="page-preloader">Loading</div>
    </div>
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS-->
    <script src="Assets/vendors/jquery/dist/jquery.min.js"></script>
    <script src="Assets/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="Assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Assets/vendors/metisMenu/dist/metisMenu.min.js" type="text/javascript"></script>
    <script src="Assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS-->
    <script src="Assets/vendors/DataTables/datatables.min.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="Assets/vendors/bootstrap/dist/js/app.min.js"></script>
    <!-- PAGE LEVEL SCRIPTS-->
    <script type="text/javascript">
        $(function() {
            $('#example-table').DataTable({
                pageLength: 10,
                //"ajax": './assets/demo/data/table_data.json',
                /*"columns": [
                    { "data": "name" },
                    { "data": "office" },
                    { "data": "extn" },
                    { "data": "start_date" },
                    { "data": "salary" }
                ]*/
            });
        })
    </script>





    
</body>
</html>
