using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.IO;




namespace WebApplication9
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=CURLING\CURLING;Initial Catalog=Videoclub;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select codigo, nombre, imagen from peliculas", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView2.DataSource = dr;
            GridView2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=CURLING\CURLING;Initial Catalog=Videoclub;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from peliculas", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

        }
    }
}