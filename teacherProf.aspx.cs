using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacherProf : System.Web.UI.Page
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


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {

            int i;
            c = new Connect();
            c.shola();
            c.com.CommandText = "update Teachers set pwd='" + txtpwd.Text.ToString().Trim() + "', username= '" + txtusername.Text.ToString().Trim() + "'  where StaffName='" + txtname.Text.ToString().Trim() + "' ";
            i = c.com.ExecuteNonQuery();
            if (i > 0)
            {

                //lblmsg.Text = "Successfully Added, Thanks.";
                Response.Redirect("Default.aspx");



            }
            else
            {
                lblmsg.Text = "The old password and username do not match, Try again.";
                txtusername.Text = "";
                txtpwd.Text = "";
                txtname.Text = "";


            }


        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
    }

    private void MsgBox(string sMessage)
    {
        string msg = "<script language=\"javascript\">";
        msg += "alert('" + sMessage + "');";
        msg += "</script>";
        Response.Write(msg);
    }
    protected void txtpwd_TextChanged(object sender, EventArgs e)
    {
        try
        {
            c = new Connect();
            c.shola();
            c.com.CommandText = "Select [schlid],[ID],[StaffName],[username],[pwd],[Cat],[Class],[Arm],[StfImage] FROM [Teachers] where [pwd]='" + txtpwd.Text.ToString().Trim() + "' and StaffName='" + Label2.Text.ToString().Trim() + "' and schlid='" + Label3.Text.ToString().Trim() + "' ";       
            //c.com.Parameters.Add(new SqlParameter("@username", Session["UserName"]));
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())
            {
                //Label2.Text = c.ds1.Tables[0].Rows[0]["StaffName"].ToString();
                txtusername.Text = c.dr.GetString(3).ToString();
                txtname.Text = c.dr.GetString(2).ToString();
                
            }
            else
            {
                //lblmsg.Text = "Contact the Admin";
            }

        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
    }
}