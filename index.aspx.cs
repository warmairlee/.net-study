using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Boolean i = false;
        string sqlconnstr = "Data Source=.;Initial Catalog=NoteDB;Integrated Security=true";
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);
        SqlCommand sqlcommand = new SqlCommand();
        sqlcommand.Connection = sqlconn;
        sqlconn.Open();
        String userid = TextBox1.Text.ToString();
        String userpasswd = TextBox2.Text.ToString();
        sqlcommand.CommandText = "select * from userinfo where id = '" + userid + "' and passwd = '" + userpasswd+"'";
        SqlDataReader sqldatareader = sqlcommand.ExecuteReader();
        while (sqldatareader.Read())
        {
            Session["userid"] = sqldatareader["id"].ToString();
            i = true;
        }
        if (i)
        {
            Response.Redirect("note.aspx");
        }
        else
        {
            Response.Write("<script>alert('登录失败，请重新输入!')</script>");
        }
        sqlcommand = null;
        sqlconn.Close();
        sqlconn = null;
    }
}