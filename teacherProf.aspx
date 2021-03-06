<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="teacherProf.aspx.cs" Inherits="teacherProf" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <asp:Label ID="Label6"  class="navbar-brand" runat="server" Text="Label6"></asp:Label>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a runat="server" href="~/"></a></li>
                    <li><a runat="server" href="~/About"></a></li>
                    <li><a runat="server" href="~/Contact"></a></li>
                </ul>
                <asp:LoginView runat="server" ViewStateMode="Disabled">
                    <AnonymousTemplate>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a runat="server" href="~/comt.aspx">Comments</a></li>
                            <li><a runat="server" href="~/teacherProf.aspx">My Profile</a></li>
                            <li><a runat="server" href="~/Default.aspx">Log Out</a></li>
                        </ul>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <ul class="nav navbar-nav navbar-right">
                            
                        </ul>
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
                
                <table class="nav-justified">
                    <tr>
                        <td style="height: 33px; font-weight: 700;" colspan="3">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                                        <asp:Label ID="Label8" runat="server" Text="WELCOME" Visible="False"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                                        <asp:Label ID="Label9" runat="server" Text="You logged into " Visible="False"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                                        <asp:Label ID="Label10" runat="server" Text="TERM : " Visible="False"></asp:Label>
&nbsp;
                                        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                                        <asp:Label ID="Label11" runat="server" Text="SESSION : " Visible="False"></asp:Label>
                                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">
                                        <asp:Label ID="Label12" runat="server" Text="Date : " Visible="False"></asp:Label>
                                        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">
                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">
                                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                    <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 86px">&nbsp;</td>
                        <td style="vertical-align: top;">
                <table style="padding: 4px; margin: 4px; width: 1043px; background-color: #660066; height: 355px;">
                    <tr>
                        <td colspan="6" style="border: thin solid #FFFFFF; background-color: #FFFFFF">TEACHER&#39;S PLATFORM</td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td style="width: 225px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px; text-align: right">
                            <asp:Label ID="Label15" runat="server" CssClass="bold" style="color: #FFFFFF" Text="password : "></asp:Label>
                        </td>
                        <td style="width: 225px">
                            <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" Width="194px" AutoPostBack="True" OnTextChanged="txtpwd_TextChanged"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px; text-align: right">
                            <asp:Label ID="Label16" runat="server" CssClass="bold" style="color: #FFFFFF" Text="username : "></asp:Label>
                        </td>
                        <td style="width: 225px">
                            <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" Width="194px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px; text-align: right">
                            <asp:Label ID="Label14" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Teacher's Name : "></asp:Label>
                        </td>
                        <td style="width: 225px">
                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Width="194px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            &nbsp;</td>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn-lg" Font-Bold="True" Font-Size="Medium" Height="42px"  Text="Update" Width="106px" OnClick="btnupdate_Click" />
                            </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
            </asp:Content>



