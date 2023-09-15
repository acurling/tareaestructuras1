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
    public partial class inicio : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bsalvar_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            connetionString = @"Data Source=CURLING\CURLING;Initial Catalog=Videoclub;Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();
            Lmensaje.Text = "Connection Open  !";

            if (!FCargarArchivo.HasFile)
            
                {
                    Lmensaje.Text = "Porfavor ingrese una imagen";
                }
                else
                {
                    try
                    {

                    string filename = Path.GetFileName(FCargarArchivo.FileName);
                    int tamano = FCargarArchivo.PostedFile.ContentLength;
                    byte[] pic = new byte[tamano];
                    FCargarArchivo.PostedFile.InputStream.Read(pic, 0, tamano);
                    SqlCommand cmd = new SqlCommand("insert into peliculas" + "(nombre,imagen) values (@nombre,@imagen)", con);
                    cmd.Parameters.AddWithValue("@nombre", tnombre.Text);
                    cmd.Parameters.AddWithValue("@imagen", pic);
                    cmd.ExecuteNonQuery();
                    Lmensaje.Text = "Archivo cargado!";

                }
                catch (Exception ex)
                    {
                        Lmensaje.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                    }
               
                con.Close();
            }
        }

        protected void Tlistado_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listado.aspx");
        }
    }
}