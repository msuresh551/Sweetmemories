<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeFile="ViewImages.aspx.cs" Inherits="ViewImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="min-height: 405px;">
                <tr>
                    <td style="background: #DFCDCD">
                        <table cellpadding="0px" cellspacing="0px">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lblView" PostBackUrl="~/frmPhotos.aspx" runat="server">Upload</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbleupload" Text="My Images" runat="server"> </asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table width="100px;">
                            <tr>
                                <td>
                                    Your Uploaded Pics....
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%--
                                    <asp:GridView ID="gvImages" runat="server">
                                    </asp:GridView>--%>
                                    <%-- <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="False" Style="margin-left: 0px"
                                        Width="350px"  PageSize="5" >
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FileID") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FileID") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("F_UserId") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("F_UserId") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="File Type" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("FileType") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FileType") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Text Optional" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TextOptional") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TextOptional") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <AlternatingItemTemplate>
                                                    <asp:Image ID="Image" runat="server" Height="300px" Width="350px" ImageUrl='<%# Bind("Imagefile") %>'>
                                                    </asp:Image>
                                                </AlternatingItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>--%>
                                    <%--<asp:ListView ID="gvImages" runat="server" DataSourceID="Images">
                                    
                                        <ItemTemplate>
                                            <asp:Image ID="Image" runat="server" Height="300px" Width="350px" ImageUrl='<%# Bind("Imagefile") %>'>
                                            </asp:Image>
                                        </ItemTemplate>
                                    
                                    
                                    
                                    </asp:ListView>

                                    --%>
                                    <asp:DataList ID="gvImages" runat="server" RepeatDirection="Horizontal" DataSourceID="Images"
                                        RepeatColumns="3">
                                        <ItemTemplate>
                                            <asp:Image ID="Image" runat="server" Height="300px" Width="350px" ImageUrl='<%# Bind("Imagefile") %>'>
                                            </asp:Image>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="Images" runat="server" ConnectionString="<%$ ConnectionStrings:hackadayConnectionString %>"
                                        SelectCommand="SELECT [Imagefile] FROM [UserImages] WHERE ([F_UserId] = @F_UserId)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="F_UserId" SessionField="ID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
