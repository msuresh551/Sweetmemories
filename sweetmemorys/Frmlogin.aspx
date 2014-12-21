<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Frmlogin.aspx.cs" Inherits="Frmlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function validate() {
            if (document.getElementById('txtUsername').value == "") {
                alert('Please enter Username');
                document.getElementById('txtUsername').focus();
                return false;
            }
            if (document.getElementById('txtPassword').value == "") {
                alert('Please enter Password');
                document.getElementById('txtPassword').focus();
                return false;
            }
         }
    
    </script>
    <style type="text/css">
        .btn
        {
            background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
            background-image: -moz-linear-gradient(top, #3498db, #2980b9);
            background-image: -ms-linear-gradient(top, #3498db, #2980b9);
            background-image: -o-linear-gradient(top, #3498db, #2980b9);
            background-image: linear-gradient(to bottom, #3498db, #2980b9);
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            padding: 10px 20px 10px 20px;
            text-decoration: none;
        }
        
        .btn:hover
        {
            background: #3cb0fd;
            background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
            background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
            background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
            text-decoration: none;
        }
        .textbox
        {
            border: 1px solid #848484;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            outline: 0;
            height: 25px;
            padding-left: 10px;
            padding-right: 10px;
            width: 230px;
            color: #333333;
            padding: 3px;
            margin-right: 4px;
            margin-bottom: 8px;
            font-family: tahoma, arial, sans-serif;
        }
        .textbox:hover
        {
            border: 1px solid #3B99F0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table style="height: 600px; margin-left: 100px;">
                            <tr>
                                <td>
                                    <img alt="Sweet Memories" title="Sweet Memories" width="400px" height="400px" src="images/Flower.jpg" />
                                </td>
                                <td>
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <img alt="Logo" title="Logo" src="images/Logo.jpg" />
                                            </td>
                                        </tr>
                                        <%--    <tr>
                                    <td >
                                        <td style="font-size: 30px; color: #33536d; margin: 11px 0 24px; line-height: 41px;">
                                        Your stuff, anywhere
                                    </td>
                                        
                                    </td>
                                </tr>--%>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtUsername" placeholder="Username" onfocus="this.placeholder=''"
                                                    onblur="this.placeholder='Username'" MaxLength="20" class="textbox" title="Username"
                                                    runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtPassword" placeholder="Password" onfocus="this.placeholder=''"
                                                    onblur="this.placeholder='Password'" MaxLength="50" CssClass="textbox" ToolTip="Password"
                                                    runat="server" TextMode="Password"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnsubmit" CssClass="btn" runat="server" Text="Login" OnClick="btnsubmit_Click" OnClientClick="return validate()" />
                                                <%--  <asp:ImageButton ID="btnSubmit"  ImageUrl="" runat="server"></asp:ImageButton>--%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="frmUserregistration.aspx"></a>
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td>
                                                Register for New User
                                            </td>
                                        </tr>--%>
                                        <tr>
                                            <td>
                                                <table width="100%;">
                                                    <tr>
                                                        <td>
                                                            Register for New User
                                                        </td>
                                                        <td>
                                                            <span style="font-size: 30px; color: #33536d; margin: 11px 0 24px; line-height: 41px;">
                                                            </span><a href="frmUserregistration.aspx" title="User Registration">
                                                                <img alt="Logo" title="Sweet Memories" width="120px" height="50px" src="images/btnSignup.jpg" /></a>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
