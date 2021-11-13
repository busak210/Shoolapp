<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admpg.aspx.cs" Inherits="admpg" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                            <li><a runat="server" href="~/admpg.aspx">Student</a></li>
                            <li><a runat="server" href="~/tcher.aspx">Teacher</a></li>
                            <li><a runat="server" href="~/clss.aspx">Class</a></li>
                            <li><a runat="server" href="~/sbject.aspx">Subject</a></li>
                            <li><a runat="server" href="~/Sess.aspx">Session</a></li>
                            <li><a runat="server" href="~/term.aspx">Term</a></li>
                            <li><a runat="server" href="~/asbjtClass.aspx">Assign Subject-Class</a></li>
                            <li><a runat="server" href="~/assbjtTeacher.aspx">Assign Subject-Teacher</a></li>
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


<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
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
                        <td style="width: 434px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="width: 156px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000; height: 20px;"></td>
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
                <table style="padding: 4px; margin: 4px; width: 1043px; background-color: #660066; height: 476px;">
                    <tr>
                        <td colspan="6" style="border: thin solid #FFFFFF; background-color: #FFFFFF">STUDENT&#39;S PLATFORM</td>
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
                            <asp:Label ID="Label14" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Reg Number : "></asp:Label>
                        </td>
                        <td style="width: 225px">
                            <asp:TextBox ID="txtreg" runat="server" CssClass="form-control" Width="194px"></asp:TextBox>
                        </td>
                       
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px; text-align: right">
                            <asp:Label ID="Label16" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Student's Name : "></asp:Label>
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
                        <td style="width: 124px; text-align: right">
                            <asp:Label ID="Label15" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Class : "></asp:Label>
                        </td>
                        <td style="width: 225px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="115px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [class] FROM [class] WHERE ([Schl] = @Schl) ORDER BY [class]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="Schl" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            <asp:Label ID="Label13" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Arm : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="115px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="arm" DataValueField="arm">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [arm] FROM [class] WHERE (([Schl] = @Schl) AND ([class] = @class)) ORDER BY [arm]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="Schl" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            <asp:Label ID="Label17" runat="server" CssClass="bold" style="color: #FFFFFF" Text="House : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:DropDownList ID="DropDownList8" runat="server" Height="20px" Width="115px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="HouseName" DataValueField="HouseName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT [HouseName] FROM [House] WHERE ([SchlID] = @SchlID) ORDER BY [HouseName]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="SchlID" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            <asp:Label ID="Label18" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Phone Number : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtphone" runat="server" CssClass="form-control" Width="194px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            <asp:Label ID="Label19" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Gender : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="115px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 124px" class="text-right">
                            <asp:Label ID="Label20" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Date of Birth : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:DropDownList ID="DropDownList5" runat="server" Height="22px" Width="40px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList6" runat="server" Height="21px" Width="77px">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList7" runat="server" Height="22px" Width="64px">
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Button ID="btnlogin" runat="server" CssClass="btn-lg" Font-Bold="True" Font-Size="Medium" Height="42px"  Text="Save" Width="106px" OnClick="btnlogin_Click"  />
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



