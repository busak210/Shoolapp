<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="assbjtTeacher.aspx.cs" Inherits="assbjtTeacher" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                </button>
                <asp:Label ID="Label6"  class="navbar-brand" runat="server" Text="Label6"></asp:Label>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <asp:LoginView runat="server" ViewStateMode="Disabled" ID="LoginView1">
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
                        <td colspan="6" style="border: thin solid #FFFFFF; background-color: #FFFFFF">ASSIGN SUBJECTS TO TEACHER PLATFORM</td>
                    </tr>
                    <tr>
                        <td style="width: 183px">
                            &nbsp;</td>
                        <td style="width: 225px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                   
                   
                    <tr>
                        <td style="width: 183px; height: 67px;" class="text-right">
                            <asp:Label ID="Label13" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Teacher : "></asp:Label>
                        </td>
                        <td colspan="5" style="height: 67px">
                            <asp:DropDownList ID="dplTeacher" runat="server" Height="23px" Width="236px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="StaffName" DataValueField="StaffName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [StaffName] FROM [Teachers] WHERE ([schlid] = @schlid)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 183px; vertical-align:top;" class="text-right" >
                            <asp:Label ID="Label17" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Subjcets : "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="false">
          <Columns>
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:CheckBox ID="chkEmployee" runat="server" AutoPostBack="true"  />
                  </ItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField  HeaderText="Subject Names">
                  <ItemTemplate>
                      <asp:TextBox ID="txtSbjName" runat="server" Text='<%#Eval("[subjectname]")%>' Enabled="false"></asp:TextBox>
                  </ItemTemplate>
              </asp:TemplateField>
            
              <asp:TemplateField HeaderText="Class Names">
                  <ItemTemplate >
                      <asp:TextBox ID="txtClass" runat="server" Text='<%#Eval("[Class]")%>' Enabled="false"></asp:TextBox>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:TemplateField  HeaderText="Class Arms">
                  <ItemTemplate>
                      <asp:TextBox ID="txtArm" runat="server" Text='<%#Eval("[Arm]")%>' Enabled="false"></asp:TextBox>
                  </ItemTemplate>
              </asp:TemplateField>
          
               
          
          </Columns>
                                <HeaderStyle Font-Bold="True" Font-Names="Andalus" Font-Size="Large" ForeColor="White" />
                                <RowStyle Font-Names="Andalus" Font-Size="Medium" />
      </asp:GridView>
      
        
     
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 183px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Button ID="btnlogin" runat="server" CssClass="btn-lg" Font-Bold="True" Font-Size="Medium" Height="42px"  Text="Assign Subject(s)" Width="172px" OnClick="btnlogin_Click" />
                            </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 183px">
                            <asp:DropDownList ID="dpltid" runat="server" Height="28px" Width="0px" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="ID" DataValueField="ID" BackColor="White" ForeColor="Black">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [ID] FROM [Teachers] WHERE ([StaffName] = @StaffName)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="dplTeacher" Name="StaffName" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
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



