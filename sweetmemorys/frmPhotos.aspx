<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="frmPhotos.aspx.cs" Inherits="frmPhotos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        changeBackground("Photos");
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="txtSubmit" />
        </Triggers>
        <ContentTemplate>
            <table style="height: 380px" cellpadding="0px" cellspacing="0px">
                <tr>
                    <td style="background: #DFCDCD">
                        <table cellpadding="0px" cellspacing="0px">
                            <tr>
                                <td>
                                    <asp:Label ID="lblupload" runat="server">Upload</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lblView" runat="server" PostBackUrl="~/ViewImages.aspx">My Uploads</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="margin-left: 200px">
                        <table cellpadding="0px" cellspacing="0px">
                            <tr>
                                <td>
                                    Upload Your Pics Here............
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr style="height: 25px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-left: 100px; padding-bottom: 20px;">
                                    <asp:FileUpload ID="MY_FileUpload" multiple accept='image/*' runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td style="padding-left: 50px;">
                                    Caption:
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtOptional"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-top: 20px; padding-left: 200px">
                                    <asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" />
                                </td>
                            </tr>
                            <tr style="height: 250px;">
                                <td colspan="2">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
