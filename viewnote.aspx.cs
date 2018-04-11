using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class notecont : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqlconnstr = "Data Source=.;Integrated Security=True; Initial Catalog=NoteDB";
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);

        DataSet ds = new DataSet();
        DataTable dtable;
        DataRowCollection coldrow;
        DataRow drow;
        sqlconn.Open();
        String num1 = (String)Session["num"];
        SqlDataAdapter sqld = new SqlDataAdapter("select * from note where num = '"+num1+"'", sqlconn);
        sqld.Fill(ds, "note");
        dtable = ds.Tables["note"];
        coldrow = dtable.Rows;
        for (int init = 0; init < coldrow.Count; init++)
        {
            drow = coldrow[init];
            TextBox1.Text = drow[2].ToString();
            TextBox2.Text = drow[3].ToString();
        }
        sqlconn.Close();
        sqlconn = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("changenote.aspx");
    }
}