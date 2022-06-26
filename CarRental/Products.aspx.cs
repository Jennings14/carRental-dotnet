using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


namespace CarRental__Romario_Jennings_1701071_
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRepeater();
            }
        }

        private void BindProductRepeater()
        {
            String CS = ConfigurationManager.ConnectionStrings["CarRentalDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
       
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtProducts = new DataTable();
                        sda.Fill(dtProducts);
                        rptrProducts.DataSource = dtProducts;
                        rptrProducts.DataBind();

                    }
                }                     
                    /*String CS = ConfigurationManager.ConnectionStrings["CarRentalDatabaseConnectionString1"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                            }
                        }
                    
                       using (SqlCommand cmd = new SqlCommand("select * from tblProducts", con))
                {
                    using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                    {
                        cmdd.CommandType = CommandType.StoredProcedure;
                    }
                     
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtProducts = new DataTable();
                        sda.Fill(dtProducts);
                        rptrProducts.DataSource = dtProducts;
                        rptrProducts.DataBind();

                    }
                     
                     */
              
            }
        }
    }
}