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
        if (!IsPostBack) { 
        String sqlconnstr = "Data Source=.;Integrated Security=True; Initial Catalog=NoteDB";
        SqlConnection sqlconn = new SqlConnection(sqlconnstr);

        DataSet ds = new DataSet();
        DataTable dtable;
        DataRowCollection coldrow;
        DataRow drow;
        sqlconn.Open();
        String num1 = (String)Session["num"];
        SqlDataAdapter sqld = new SqlDataAdapter("select * from note where num = '" + num1 + "'", sqlconn);
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text.ToString() == "" || TextBox1.Text.ToString() == null)
        {
            Response.Write("<script>alert('标题不得为空')</script");
        }
        else
        {
            String abs = null;
            int i = TextBox2.Text.ToString().Length;
            if (i >= 15) { abs = TextBox2.Text.ToString().Substring(0, 15) + "..."; }
            else { abs = TextBox2.Text.ToString(); }

            String sqlconnstr = "Data Source=.;Integrated Security=True; Initial Catalog=NoteDB";
            SqlConnection sqlconn = new SqlConnection(sqlconnstr);

            DataSet ds = new DataSet();
            DataTable dtable;
            DataRowCollection coldrow;
            DataRow drow;
            sqlconn.Open();
            String num1 = (String)Session["num"];
            SqlDataAdapter sqld = new SqlDataAdapter("select * from note where num = '" + num1 + "'", sqlconn);

            sqld.UpdateCommand = new SqlCommand("update note set title = @TITLE, cont = @CONT, abs = @ABS where num = @NUM", sqlconn);
            sqld.UpdateCommand.Parameters.Add("@TITLE", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            sqld.UpdateCommand.Parameters.Add("@CONT", SqlDbType.VarChar, 8000).Value = TextBox2.Text;
            sqld.UpdateCommand.Parameters.Add("@ABS", SqlDbType.VarChar, 40).Value = abs;
            SqlParameter parameter = sqld.UpdateCommand.Parameters.Add("@NUM", SqlDbType.VarChar, 10);
            parameter.SourceColumn = "NUM";
            parameter.SourceVersion = DataRowVersion.Original;

            
            
            sqld.Fill(ds, "note");
            dtable = ds.Tables["note"];
            coldrow = dtable.Rows;
            for (int inti = 0; inti < coldrow.Count; inti++)
            {
                drow = coldrow[inti];
                drow[2] = TextBox1.Text;
                drow[3] = TextBox2.Text;
                drow[4] = abs;
            }
            sqld.Update(ds, "note");
            sqlconn.Close();
            sqlconn = null;
            Response.Redirect("viewnote.aspx");
        }
    }

}