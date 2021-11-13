using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admpg : System.Web.UI.Page
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
        try{
        c = new Connect();
        c.shola();
        //c.com.CommandText = "SELECT [schlid],[ID],[StaffName],[username],[pwd],[Cat],[Class],[Arm] FROM [Teachers] where UserName='" + Session["UserName"] + "'";
        c.com.CommandText = "spAdminLgin @username";
        c.com.Parameters.Add(new SqlParameter("@username", Session["UserName"]));
       // c.adapt.SelectCommand = c.com;
       // c.adapt.Fill(c.ds1);
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
            c.com.CommandText = "spStuedntCreate @regNo,@name,@class,@arm,@house,@phone,@gender,@bday,@bmonth,@byear,@Shlid ";
            c.com.Parameters.Add(new SqlParameter("@Shlid", Label3.Text));
            c.com.Parameters.Add(new SqlParameter("@regNo", txtreg.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@name", txtname.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@class", DropDownList1.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@arm", DropDownList2.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@house", DropDownList8.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@phone", txtphone.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@gender", DropDownList4.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@bday", DropDownList5.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@bmonth", DropDownList6.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@byear", DropDownList7.Text.ToString()));
            
            i = c.com.ExecuteNonQuery();
            if (i > 0)
            {

                lblmsg.Text = "Successfully adeed";
                AddStdScores();
                txtreg.Text = "";
                txtname.Text = "";
                txtphone.Text = "";


            }
            else
            {
                lblmsg.Text = "Unsuccessful, Try again";




            }
        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
        
    }
    private void AddStdScores()
    {
         try
        {
            int i;
            c = new Connect();
            c.shola();
            //c.com.CommandText = "insert into [Scores]([SchlID],[RegNo],[StudentName],[Class],[Arm],[Sess],[Term]) values(@Shlid,@regNo,@name,@class,@arm,@sess,@term)";
            c.com.CommandText = "spStdScoresCreate @Shlid,@regNo,@name,@class,@arm,@sess,@term";
            c.com.Parameters.Add(new SqlParameter("@Shlid", Label3.Text));
            c.com.Parameters.Add(new SqlParameter("@regNo", txtreg.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@name", txtname.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@class", DropDownList1.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@arm", DropDownList2.Text.ToString()));
            c.com.Parameters.Add(new SqlParameter("@term", Label5.Text));
            c.com.Parameters.Add(new SqlParameter("@sess", Label4.Text));
            
            i = c.com.ExecuteNonQuery();
            if (i > 0)
            {

                lblmsg.Text = "Successfully adeed";
                


            }
            else
            {
                lblmsg.Text = "Unsuccessful, Try again";




            }
        }
        catch (Exception me)
        {
            lblmsg.Text = me.Message;
        }
 


    }
}