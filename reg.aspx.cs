using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String sqlconnstr = "Data Source=.;Integrated Security=True; Initial Catalog=NoteDB";
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);

        DataSet ds = new DataSet();
        DataTable dtable;
        DataRow drow;
        sqlconn.Open();

        SqlDataAdapter sqld = new SqlDataAdapter("select * from userinfo", sqlconn);
        SqlCommandBuilder cb = new SqlCommandBuilder(sqld);
        sqld.Fill(ds, "user");
        dtable = ds.Tables["user"];
        drow = ds.Tables["user"].NewRow();

        drow[0] = TextBox1.Text;
        drow[1] = TextBox2.Text;
        drow[2] = TextBox4.Text;
        ds.Tables["user"].Rows.Add(drow);
        sqld.Update(ds, "user");
        sqlconn.Close();
        sqlconn = null;
        Response.Redirect("index.aspx");
    }
}