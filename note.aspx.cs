using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

public partial class note : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String userid1 = (String)Session["userid"];
        SqlDataSource1.SelectCommand = "select * from note where userid = '" + userid1 +"'";
        this.GridView1.DataKeyNames = new string[] { "num" };
        this.GridView1.DataBind();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addnote.aspx");
    }

    protected void GridView1_Selecct(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Session["num"] = row.Cells[0].Text;
        Session["title"] = row.Cells[1].Text;
        Response.Redirect("viewnote.aspx");
    }




    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (e.RowIndex > -1)
        {

            string strCon = "Data Source=.;Initial Catalog=NoteDB;Integrated Security=true";
            SqlConnection conn = new SqlConnection(strCon);
            string sql = "delete from note where num = '" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataSource1.DeleteCommand = sql;
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
        }
    }

}