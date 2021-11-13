using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class term : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Visible = true;
        Label2.Visible = true;
        //Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
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
        try { 
        c = new Connect();
        c.shola();
        //c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat],[Class],[Arm] FROM [Teachers] where UserName='" + Session["UserName"] + "'";
        c.com.CommandText = "spComputeLgin @username";
        c.com.Parameters.Add(new SqlParameter("@username", Session["UserName"]));
        //c.adapt.SelectCommand = c.com;
        //c.adapt.Fill(c.ds1);
        //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
        c.dr = c.com.ExecuteReader();
        if (c.dr.Read())
        {
            //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
            Label2.Text = c.dr.GetString(2).ToString();
        }
        else
        {
            lblmsg.Text = "Contact the Admin";
        }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
       
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            int i;
            c = new Connect();
            c.shola();
            c.com.CommandText = "spTermCreate @termname, @Shlid,@SchName ";
            c.com.Parameters.Add(new SqlParameter("@Shlid", Label3.Text));
            c.com.Parameters.Add(new SqlParameter("@termname", txttermname.Text.Trim()));
            c.com.Parameters.Add(new SqlParameter("@SchName", Label6.Text.Trim())); 
            i = c.com.ExecuteNonQuery();
            if (i > 0)
            {

                lblmsg.Text = "Successfully adeed";
                txttermname.Text = "";

            }
            else
            {
                lblmsg.Text = "Unsuccessful, Try again";
                txttermname.Text = "";



            }
        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
    }
}