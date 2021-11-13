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

public partial class _Default : System.Web.UI.Page
{
    Connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string UserName = txtuser.Text.ToString();
        string Term = dplTerm.Text.ToString();
        String Sessss = dplSess.Text.ToString();
        String schname = dplschnam.Text.ToString();
        String shid = dplSchid.Text.ToString();
        


        try
        {
        c = new Connect();
        c.shola();
        //c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat] FROM [Teachers] where username=@username and pwd=@password and schlid=@schlid";
        c.com.CommandText = "spLogin @username,@password,@schlid";
        c.com.Parameters.Add(new SqlParameter("@username", txtuser.Text.Trim()));
        c.com.Parameters.Add(new SqlParameter("@password", txtpwd.Text.Trim()));
        c.com.Parameters.Add(new SqlParameter("@schlid", dplSchid.Text.ToString().Trim()));
        c.dr = c.com.ExecuteReader();
        while (c.dr.Read())
        {
            if(c.dr.GetString(5).ToString()=="Admin")
            {
                Session["username"] = UserName;
                Session["schlid"] = shid;
                Session["Term"] = Term;
                Session["Sessss"] = Sessss;
                Session["schname"] = schname;

                Response.Redirect("admpg.aspx");
            
            }
            else if(c.dr.GetString(5).ToString()=="Teacher")
            {


                 Session["username"] = UserName;
                 Session["schlid"] = shid;
                 Session["Term"] = Term;
                 Session["Sessss"] = Sessss;
                 Session["schname"] = schname;

                Response.Redirect("compute.aspx");
            
             }
             else
             {
                 lblmsg.Text = "Invalid username or password, Contact admin pls.";
            
              }
            }
        }
         catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }    
    
    }
        protected void btnresult_Click(object sender, EventArgs e)
        {
    //    string UserName = txtuser.Text.ToString();
    //    string Term = dplTerm.Text.ToString();
    //    String Sessss = dplSess.Text.ToString();
    //    String schname = dplschnam.Text.ToString();
    //    String shid = dplSchid.Text.ToString();



    //    try
    //    {
    //        c = new Connect();
    //        c.shola();
    //        c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat] FROM [Teachers] where username=@username and pwd=@password and schlid=@schlid";
    //        c.com.CommandText = "spResult @username,@password,@schlid";
    //        c.com.Parameters.Add(new SqlParameter("@username", txtuser.Text.Trim()));
    //        c.com.Parameters.Add(new SqlParameter("@password", txtpwd.Text.Trim()));
    //        c.com.Parameters.Add(new SqlParameter("@schlid", dplSchid.Text.ToString().Trim()));
    //        c.dr = c.com.ExecuteReader();
    //        if (c.dr.Read())
    //        {
    //            Session["username"] = UserName;
    //            Session["schlid"] = shid;
    //            Session["Term"] = Term;
    //            Session["Sessss"] = Sessss;
    //            Session["schname"] = schname;

            Response.Redirect("resultDisplay.aspx");

    //        }
    //        else
    //        {
    //            lblmsg.Text = "Invalid username or password, Contact admin pls.";

    //        }
    //    }

    //    catch (Exception me)
    //    {
    //        lblmsg.Text = me.Message;
    //    }

    }

}