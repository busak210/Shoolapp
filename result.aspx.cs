using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class result : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Visible = true;

        //Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label7.Visible = true;
        Label9.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        Label12.Visible = true;
        Label7.Text = DateTime.Now.ToShortDateString();
        Label1.Text = Session["username"].ToString();
        Label3.Text = Session["schlid"].ToString();
        Label5.Text = Session["Term"].ToString();
        Label4.Text = Session["Sessss"].ToString();
        Label6.Text = Session["schname"].ToString();
        c = new Connect();
        c.shola();
        c.com.CommandText = "SELECT [schlid],[username],[pwd] FROM [result] where UserName='" + Session["UserName"] + "'";
        // c.com.CommandText = "spResult @username";
        c.com.Parameters.Add(new SqlParameter("@username", Session["UserName"]));
        c.adapt.SelectCommand = c.com;
        c.adapt.Fill(c.ds1);
        // Label2.Text = c.ds.Tables[0].Rows[0]["StaffName"].ToString();

        int @regno = Int32.Parse(Label1.Text);
        string @sess = Label4.Text;
        string @term = Label5.Text;
        int @schlid = Int32.Parse(Label3.Text);
        ReportViewer1.Visible = true;
        ReportViewer1.LocalReport.EnableExternalImages = true;
        ObjectDataSource1.SelectParameters["RegNo"].DefaultValue = @regno.ToString();
        ObjectDataSource1.SelectParameters["SchlID"].DefaultValue = @schlid.ToString();
        ObjectDataSource1.SelectParameters["Sess"].DefaultValue = @sess;
        ObjectDataSource1.SelectParameters["Term"].DefaultValue = @term;
        ObjectDataSource1.DataBind();
        this.ReportViewer1.LocalReport.Refresh();



    }
}