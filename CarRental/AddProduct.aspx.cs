using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;



namespace CarRental__Romario_Jennings_1701071_
{
    public partial class AddProduct : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["CarRentalDatabaseConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("procInsertProducts", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtName.Text);
                cmd.Parameters.AddWithValue("@PDescription", txtDesc.Text);
                cmd.Parameters.AddWithValue("@PCategory", txtCategory.Text);
                cmd.Parameters.AddWithValue("@PUnitPrice", txtUnitPrice.Text);
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

                //Insert and uplowad images
                if (fuImg01.HasFile)
                {
                    string SavePath = Server.MapPath("~/Images/ProductImage/") + PID; 
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);
                    }
                    string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                    fuImg01.SaveAs(SavePath + "\\" + txtName.Text.ToString().Trim() + "01" + Extention);

                    SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                    cmd3.ExecuteNonQuery();
                }

            }
        }
    }
}