using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class comt : System.Web.UI.Page
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

    private DataTable GetData()
    {
        string connection = ConfigurationManager.ConnectionStrings["schoolsConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connection))
        {
            //using (SqlCommand cmd = new SqlCommand("IF EXISTS(SELECT [ID],[SchlID],[RegNo],[StudentName],[Class],[Arm],[SubjectID],[Sess],[Term],[CA],[Exams],[Total],[Grade] FROM [schools].[dbo].[Scores] WHERE [SchlID]=@Shlid AND [Class]=@class AND [Arm]=@arm AND [Sess]=@sess AND [Term]=@term AND ([SubjectID]=@SubjectID OR [SubjectID]='0')) SELECT [ID],[SchlID],[RegNo],[StudentName],[Class],[Arm],[SubjectID],[Sess],[Term],[CA],[Exams],[Total],[Grade] FROM [schools].[dbo].[Scores] WHERE [SchlID]=@Shlid AND [Class]=@class AND [Arm]=@arm AND [Sess]=@sess AND [Term]=@term AND ([SubjectID]=@SubjectID OR [SubjectID]='0') ELSE  SELECT [SchlID],[RegNo],[StudentName],[Class],[Arm],[CA],[Exams] FROM [schools].[dbo].[StudentInfo] WHERE [SchlID]=@Shlid AND [Class]=@class AND [Arm]=@arm ", con))
            //{
            using (SqlCommand cmd = new SqlCommand("spCommentGetData @Shlid, @class,@arm,@sess ", con))
            {
                //cmd.Parameters.Add(new SqlParameter("@ca", txtca.Text.Trim()));
                //cmd.Parameters.Add(new SqlParameter("@exam", txtexam.Text.Trim()));
                //cmd.Parameters.Add(new SqlParameter("@SubjectID", dplsid.Text.ToString().Trim()));
                //cmd.Parameters.Add(new SqlParameter("@name", lblsname.Text.Trim()));
                cmd.Parameters.Add(new SqlParameter("@class", dplclass.Text.ToString().Trim()));
                cmd.Parameters.Add(new SqlParameter("@arm", dplarms.Text.ToString().Trim()));
                cmd.Parameters.Add(new SqlParameter("@term", Label5.Text.ToString().Trim()));
                cmd.Parameters.Add(new SqlParameter("@sess", Label4.Text.ToString().Trim()));
                cmd.Parameters.Add(new SqlParameter("@Shlid", Label3.Text.ToString().Trim()));
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    da.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }



    private void MsgBox(string sMessage)
    {
        string msg = "<script language=\"javascript\">";
        msg += "alert('" + sMessage + "');";
        msg += "</script>";
        Response.Write(msg);
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
        int i;
        foreach (GridViewRow row in gvEmployees.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkEmployee = (CheckBox)row.FindControl("chkEmployee");
                //if (chkEmployee.Checked)
                {
                    Label txtstdname = (Label)row.FindControl("txtstdname");
                    Label txtstdreg = (Label)row.FindControl("txtstdreg");
                    TextBox txtstdca = (TextBox)row.FindControl("txtstdca");

                    if (txtstdca.Text == "")
                    {
                        MsgBox("The Comment must not be Empty");
                    }
                        else
                    { 
                    
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolsConnectionString"].ConnectionString))
                    {
                        //using (SqlCommand cmd = new SqlCommand("IF EXISTS(SELECT [ID],[SchlID],[RegNo],[StudentName],[Class],[Arm],[SubjectID],[Sess],[Term],[CA],[Exams],[Total],[Grade] FROM [schools].[dbo].[Scores] WHERE [SchlID]=@schlid AND [Class]=@class AND [Arm]=@arm AND [Sess]=@Sessn AND [RegNo]=@regno AND [Term]=@term AND ([SubjectID]=@subjid OR [SubjectID]='0')) UPDATE [Scores] set [CA]=@ca,[Exams]=@exams,[SubjectID]=@subjid WHERE [RegNo]=@regno AND [SchlID]=@schlid AND [Class]=@class AND [Arm]=@arm AND [Sess]=@Sessn AND [Term]=@term AND ([SubjectID]=@subjid OR [SubjectID]='0') ELSE INSERT INTO [Scores](schlid,[RegNo],[StudentName],[Class],[Arm],[SubjectID],[Sess],[Term],[CA],[Exams]) VALUES(@schlid,@regno, @sname,@Class,@Arm,@subjid,@Sessn,@Term,@ca,@exams)", con))
                        //{
                        using (SqlCommand cmd = new SqlCommand("spCommentInsert @schlid,@comment,@regno,@Term,@Sessn", con))
                        {
                            cmd.Parameters.AddWithValue("@schlid", Label3.Text.Trim());
                            cmd.Parameters.AddWithValue("@regno", txtstdname.Text.Trim());
                            cmd.Parameters.AddWithValue("@Sessn", Label4.Text.Trim());
                            cmd.Parameters.AddWithValue("@Term", Label5.Text.Trim());
                            cmd.Parameters.AddWithValue("@comment", txtstdca.Text.Trim());
                            

                            con.Open();
                            i = cmd.ExecuteNonQuery();
                            if (i > 0)
                            {
                                lblmsg.Text="Successfully Commented";


                            }
                            else
                            {
                                lblmsg.Text = "Unsuccessful, Try again";
                            }
                            con.Close();
                        }
                    }
                    }
                }
            }
         }
        }
    }

    public void InitialCommentPop()
    {
        try
        {
            int i;
            c = new Connect();
            c.shola();
            c.com.CommandText = "spInitialacommenttblPopulate @Shlid,@class,@arm,@sess,@term ";
            c.com.Parameters.Add(new SqlParameter("@Shlid", Label3.Text));
            c.com.Parameters.Add(new SqlParameter("@class", dplclass.Text.ToString().Trim()));
            c.com.Parameters.Add(new SqlParameter("@arm", dplarms.Text.ToString().Trim()));
            c.com.Parameters.Add(new SqlParameter("@sess", Label4.Text.ToString().Trim()));
            c.com.Parameters.Add(new SqlParameter("@term", Label5.Text.ToString().Trim()));
            i = c.com.ExecuteNonQuery();
            if (i > 0)
            {

                lblmsg.Text = "Successful";
                
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


    protected void btnok_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            InitialCommentPop();
            gvEmployees.DataSource = this.GetData();
            gvEmployees.DataBind();
        }
        btnSubmit.Visible = true;
        gvEmployees.Visible = true;
        btnok.Visible = false;

    }
    
    protected void dplclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnSubmit.Visible = false;
        gvEmployees.Visible = false;
        lblmsg.Visible = false;
        btnok.Visible = true;
    }
    protected void dplarms_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnSubmit.Visible = false;
        gvEmployees.Visible = false;
        btnok.Visible = true;
    }
}
