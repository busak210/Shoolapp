<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


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
                            <li><a runat="server" href="#"></a></li>
                            <li><a runat="server" href="#"></a></li>
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
                        <td style="width: 414px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 187px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 414px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                            &nbsp;</td>
                        <td style="width: 187px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">
                            <asp:Label ID="Label9" runat="server" Text="YOUR RESULT FOR :" Visible="False"></asp:Label>
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
                        <td style="width: 414px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 187px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 194px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 221px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                        <td style="font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 414px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
                        <td style="width: 187px; font-family: 'Times New Roman', Times, serif; font-size: small; font-weight: bolder; color: #000000;">&nbsp;</td>
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
                <table style="padding: 4px; margin: 4px; width: 823px; background-color: #660066; height: 279px;">
                    <tr>
                        <td colspan="2" style="border: thin solid #FFFFFF; background-color: #FFFFFF">RESULT PLATFORM</td>
                    </tr>
                    <tr>
                        <td style="width: 124px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td style="background-color: #FFFFFF;" colspan="2">
                            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="866px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="815px">
                                <localreport reportpath="Report.rdlc">
                                    <datasources>
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet2" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet3" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet4" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="DataSet5" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="DataSet6" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="DataSet7" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="DataSet8" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource9" Name="DataSet9" />
                                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource10" Name="DataSet10" />
                                        <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet11" />
                                    </datasources>
                                </localreport>
                            </rsweb:ReportViewer>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolsConnectionString %>" SelectCommand="SELECT [Schlid], [Regno], [CumAvg], [rank] FROM [Classpositiontbl]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="width: 124px">
                            &nbsp;</td>
                        <td>
                            <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.acommentTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SchlID" Type="Int32" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter Name="regno" Type="Int32" />
                <asp:Parameter Name="term" Type="String" />
                <asp:Parameter Name="sess" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label5" Name="term" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="sess" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SchlID" Type="Int32" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter Name="regno" Type="Int32" />
                <asp:Parameter Name="term" Type="String" />
                <asp:Parameter Name="sess" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.positiontblTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="Schlid" Type="Int32" />
                <asp:Parameter Name="Regno" Type="Int32" />
                <asp:Parameter Name="CumAvg" Type="Int32" />
                <asp:Parameter Name="rank" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.SchlPrincipalsTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="schid" Type="Int32" />
                <asp:Parameter Name="principalName" Type="String" />
                <asp:Parameter Name="signature" Type="Object" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CummulativeGradeSummary_TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TermGradeSummary_TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label5" Name="term" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="sess" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.schlInfoTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_schlid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="schlid" Type="Int32" />
                <asp:Parameter Name="schlname" Type="String" />
                <asp:Parameter Name="schllogo" Type="Object" />
                <asp:Parameter Name="schlslogan" Type="String" />
                <asp:Parameter Name="schlAddress" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="schlname" Type="String" />
                <asp:Parameter Name="schllogo" Type="Object" />
                <asp:Parameter Name="schlslogan" Type="String" />
                <asp:Parameter Name="schlAddress" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Original_schlid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.vwCummulativeTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.vwScoresPerTermTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label5" Name="term" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.vwGradeRemarksTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="regno" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label5" Name="term" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="sess" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label3" Name="schlid" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    &nbsp;</td>
                   <tr>
                        <td style="width: 124px">
                           
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
    </table>
    </table>
</asp:Content>




