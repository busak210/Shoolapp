using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class assbjtTeacher : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            gvEmployees.DataSource = this.GetData();
            gvEmployees.DataBind();
        }
    }

    private DataTable GetData()
    {
        string connection = ConfigurationManager.ConnectionStrings["schoolsConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connection))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Subjects-Class] where [schlid]='" + Label3.Text.ToString() + "' and [Term]='" + Label5.Text.ToString() + "' and [Sessn]='" + Label4.Text.ToString() + "'", con))
            {
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

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            int i;
            foreach (GridViewRow row in gvEmployees.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkEmployee = (CheckBox)row.FindControl("chkEmployee");
                    if (chkEmployee.Checked)
                    {

                        TextBox txtSbjName = (TextBox)row.FindControl("txtSbjName");
                        TextBox txtClass = (TextBox)row.FindControl("txtClass");
                        TextBox txtArm = (TextBox)row.FindControl("txtArm");

                         using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolsConnectionString"].ConnectionString))
                        {
                            //using (SqlCommand cmd = new SqlCommand("UPDATE [Subjects-Class] set [TeacherID]= @teacherid where [subjectname]=@subjectname and [Class]= @Class and [Arm]=@Arm and [schlid]='" + Label3.Text.ToString() + "' and [Term]='" + Label5.Text.ToString() + "' and [Sessn]='" + Label4.Text.ToString() + "' ", con))
                            //{
                            using (SqlCommand cmd = new SqlCommand("spAsbjtTeacher @teacherid,@subjectname,@Class,@Arm,@schlid,@Term,@Sessn", con))
                            {

                                cmd.Parameters.AddWithValue("@subjectname", txtSbjName.Text.Trim());
                                cmd.Parameters.AddWithValue("@schlid", Label3.Text.Trim());
                                cmd.Parameters.AddWithValue("@Class", txtClass.Text.Trim());
                                cmd.Parameters.AddWithValue("@Arm", txtArm.Text.Trim());
                                cmd.Parameters.AddWithValue("@Term", Label5.Text.Trim());
                                cmd.Parameters.AddWithValue("@Sessn", Label4.Text.Trim());
                                cmd.Parameters.AddWithValue("@teacherid", dpltid.Text.Trim());
                                con.Open();
                                i=cmd.ExecuteNonQuery();
                                if(i>0)
                                {
                                    MsgBox("Successfully Assigned, Thanks");
                                    //lblmsg.Text = "Successfully Assigned, Thanks";
                                    chkEmployee.Checked = false;
                                }
                                else
                                {

                                    lblmsg.Text = "Unsuccessfull, Try again";
                                    chkEmployee.Checked = false;
                                }
                                con.Close();
                        
                            
                        }
                    }
                }
            }
        }
        
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }

     }
 }

