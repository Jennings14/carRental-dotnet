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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCartProducts();
            }
        }

        private void BindCartProducts()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    h5NoItems.InnerText = "MY CART (" + CookieDataArray.Length + " Items)";
                    DataTable dtProducts = new DataTable();
                    Int64 CartTotal = 0;
                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];

                        String CS = ConfigurationManager.ConnectionStrings["CarRentalDatabaseConnectionString1"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd = new SqlCommand("select A.*,IMGData.Name,IMGData.Extention from tblProducts A cross apply(select top 1 B.Name, Extention from tblProductImages B where B.PID = A.PID)IMGData where A.PID= " 
                                + PID + "", con))
                            {
                                cmd.CommandType = CommandType.Text;

                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {
                                    sda.Fill(dtProducts);
                                }                                
                            }
                        }
                        CartTotal += Convert.ToInt64(dtProducts.Rows[i]["PUnitPrice"]);
                    }
                    rptrCartProducts.DataSource = dtProducts;
                    rptrCartProducts.DataBind();
                    divPriceDetails.Visible = true;

                    spanCartTotal.InnerText = CartTotal.ToString();

                }
                else
                {
                    //TODO Show Empty Cart
                    h5NoItems.InnerText = "Your Shopping Cart is Empty";
                    divPriceDetails.Visible = false;
                }
            }
            else
            {
                //TODO Show Empty Cart
                h5NoItems.InnerText = "Your Shopping Cart is Empty";
                divPriceDetails.Visible = false;
            }
        }

        protected void btnRemoveItem_Click(object sender, EventArgs e)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            Button btn = (Button)(sender);
            string PIDSIZE = btn.CommandArgument;

            List<String> CookiePIDList = CookiePID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
            CookiePIDList.Remove(PIDSIZE);
            string CookiePIDUpdated = String.Join(",", CookiePIDList.ToArray());
            if (CookiePIDUpdated == "")
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = null;
                CartProducts.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(CartProducts);

            }
            else
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = CookiePIDUpdated;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);

            }
            Response.Redirect("~/Cart.aspx");

        }
    }
}
