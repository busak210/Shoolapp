<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="comt.aspx.cs" Inherits="comt" %>

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
                            <li><a runat="server" href="~/compute.aspx">Compute</a></li>
                            <li><a runat="server" href="#">My Profile</a></li>
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
                <table style="padding: 4px; margin: 4px; width: 1043px; background-color: #660066; height: 279px;">
                    <tr>
                        <td colspan="6" style="border: thin solid #FFFFFF; background-color: #FFFFFF">COMMENT PLATFORM</td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px; text-align: right; height: 63px;">
                            <asp:Label ID="Label15" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Class : "></asp:Label>
                        </td>
                        <td style="height: 63px">
                            <asp:DropDownList ID="dplclass" runat="server" Height="21px" Width="163px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Class" DataValueField="Class" OnSelectedIndexChanged="dplclass_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [Class] FROM [TeacherSubject-Class] WHERE (([StaffName] = @StaffName) AND ([Sessn] = @Sessn) AND ([Term] = @Term)) ORDER BY [Class]">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label2" Name="StaffName" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label4" Name="Sessn" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label5" Name="Term" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                    </tr>
                    <tr>
                        <td style="width: 124px; text-align: right; height: 63px;">
                            <asp:Label ID="Label13" runat="server" CssClass="bold" style="color: #FFFFFF" Text="Arm : "></asp:Label>
                        </td>
                        <td style="height: 63px">
                            <asp:DropDownList ID="dplarms" runat="server" Height="21px" Width="113px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Arm" DataValueField="Arm" OnSelectedIndexChanged="dplarms_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [Arm] FROM [TeacherSubject-Class] WHERE (([Class] = @Class) AND ([StaffName] = @StaffName) AND ([Sessn] = @Sessn) AND ([Term] = @Term)) ORDER BY [Arm]">
                                <SelectParameters>
                                    
                                    <asp:ControlParameter ControlID="dplclass" Name="Class" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="Label2" Name="StaffName" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label4" Name="Sessn" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label5" Name="Term" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                        <td style="height: 63px"></td>
                    </tr>
                    <tr>
                        <td style="width: 124px">&nbsp;</td>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">&nbsp;</td>
                        <td colspan="5">
                            <asp:Button ID="btnok" runat="server" CssClass="btn-lg" Font-Bold="True" Font-Size="Medium" Height="42px"  Text="Comment" Width="120px" OnClick="btnok_Click"  />
                            </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">&nbsp;</td>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="false">
          <Columns>
              <%--<asp:TemplateField>
                  <ItemTemplate>
                      <asp:CheckBox ID="chkEmployee" runat="server" AutoPostBack="true"  />
                  </ItemTemplate>
              </asp:TemplateField>--%>

              <asp:TemplateField  HeaderText="Reg. Number">
                  <ItemTemplate>
                       <asp:Label  ID="txtstdName" runat="server" Text='<%#Eval("[RegNo]")%>' Enabled="false"></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
            
              <asp:TemplateField HeaderText="Cummulative Average">
                  <ItemTemplate >
                      <asp:Label ID="txtstdreg" runat="server" Text='<%#Eval("CummulativeAvg")%>' Enabled="false"></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
               <asp:TemplateField  HeaderText="Comment">
                  <ItemTemplate>
                      <asp:TextBox ID="txtstdca" runat="server"  Text='<%#Eval("[comment]")%>' Enabled="true" Width="220px"></asp:TextBox>
                  </ItemTemplate>
              </asp:TemplateField>
               
          
              
          
          </Columns>
                                <HeaderStyle Font-Bold="True" Font-Names="Andalus" Font-Size="Large" ForeColor="White" />
                                <RowStyle Font-Names="Andalus" Font-Size="Medium" ForeColor="White" />
      </asp:GridView>
      
        
     
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn-lg" Font-Bold="True" Font-Size="Medium" Height="42px"  Text="Submit" Width="106px" OnClick="btnSubmit_Click" Visible="False" />
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td colspan="5">
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 124px">
                            <asp:DropDownList ID="dplsid" runat="server" DataSourceID="SqlDataSource4" DataTextField="id" DataValueField="id" Width="0px" AutoPostBack="True" Height="16px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT DISTINCT [id] FROM [TeacherSubject-Class] WHERE (([schlid] = @schlid) AND ([Term] = @Term) AND ([Sessn] = @Sessn) AND ([Class] = @Class) AND ([Arm] = @Arm))">
                                <SelectParameters>
                                    
                                    <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="Label5" Name="Term" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="Label4" Name="Sessn" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="dplclass" Name="Class" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="dplarms" Name="Arm" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td colspan="5">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>




