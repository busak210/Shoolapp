using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.IO.Ports;
using System.Net;
using System.Net.Mail;


public partial class resultDisplay : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnresult_Click(object sender, EventArgs e)
    {
        if (dplschnam.SelectedItem.ToString() == "Select Your School Name" || DropDownList1.SelectedItem.ToString() == "Select Your Class" || DropDownList2.SelectedItem.ToString() == "Select Your Arm")
        {
            lblmsg.Text = "One of the required fields is missing";
        }
        else { 
        
        string UserName = txtuser.Text.ToString();
        string Term = dplTerm.Text.ToString();
        String Sessss = dplSess.Text.ToString();
        String schname = dplschnam.Text.ToString();
        String shid = dplSchid.Text.ToString();

        Pos();

        try
        {
            c = new Connect();
            c.shola();
            //c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat] FROM [Teachers] where username=@username and pwd=@password and schlid=@schlid";
            c.com.CommandText = "spResult @username,@password,@schlid";
            c.com.Parameters.Add(new SqlParameter("@username", txtuser.Text.Trim()));
            c.com.Parameters.Add(new SqlParameter("@password", txtpwd.Text.Trim()));
            c.com.Parameters.Add(new SqlParameter("@schlid", dplSchid.Text.ToString().Trim()));
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())
            {
                Session["username"] = UserName;
                Session["schlid"] = shid;
                Session["Term"] = Term;
                Session["Sessss"] = Sessss;
                Session["schname"] = schname;

                Response.Redirect("result.aspx");

            }
            else
            {
                lblmsg.Text = "Invalid username or password, Contact admin pls.";

            }
        }

        catch (Exception me)
        {
            lblmsg.Text = me.Message;
            }
        }
    }

    public void Pos()
    {
        string clas = DropDownList1.Text.ToString();
        string arm = DropDownList2.Text.ToString();
        String shid = dplSchid.Text.ToString();
        try
        {
            c = new Connect();
            c.shola();
            //c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat] FROM [Teachers] where username=@username and pwd=@password and schlid=@schlid";
            c.com.CommandText = "spPosition @class,@Arm,@SchlID";
            c.com.Parameters.Add(new SqlParameter("@class", DropDownList1.Text.ToString().Trim()));
            c.com.Parameters.Add(new SqlParameter("@Arm", DropDownList2.Text.ToString().Trim()));
            c.com.Parameters.Add(new SqlParameter("@SchlID", dplSchid.Text.ToString().Trim()));
            c.dr = c.com.ExecuteReader();
            if (c.dr.Read())
            {
                Session["clas"] = clas;
                Session["shid"] = shid;
                Session["arm"] = arm;

            }
            else
            {
                lblmsg.Text = "Invalid username or password, Contact admin pls.";

            }
        }

        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }


    }

}