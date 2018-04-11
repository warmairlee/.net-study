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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToString() == "" || TextBox1.Text.ToString() == null)
        {
            Response.Write("<script>alert('标题不得为空')</script");
        }
        else {
            String sqlconnstr = "Data Source=.;Integrated Security=True; Initial Catalog=NoteDB";
            SqlConnection sqlconn = new SqlConnection(sqlconnstr);

            DataSet ds = new DataSet();
            DataTable dtable;
            DataRow drow;
            sqlconn.Open();

            SqlDataAdapter sqld = new SqlDataAdapter("select * from Note", sqlconn);
            SqlCommandBuilder cb = new SqlCommandBuilder(sqld);
            sqld.Fill(ds, "note");
            dtable = ds.Tables["note"];
            drow = ds.Tables["note"].NewRow();
            String abs = null;
            int i = TextBox2.Text.ToString().Length;
            if (i >= 15) { abs = TextBox2.Text.ToString().Substring(0, 15) + "..."; }
            else { abs = TextBox2.Text.ToString(); }
        
            drow[1] = (String)Session["userid"];
            drow[2] = TextBox1.Text;
            drow[3] = TextBox2.Text;
            drow[4] = abs;
        

            ds.Tables["note"].Rows.Add(drow);
            sqld.Update(ds, "note");
            sqlconn.Close();
            sqlconn = null;
            Response.Redirect("note.aspx");
        }
    }

}